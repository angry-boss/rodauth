# frozen_string_literal: true

require "openssl"
require "tpm/key_attestation/version"
require "tpm/aik_certificate"
require "tpm/certify_validator"
require "tpm/constants"

module TPM
  class KeyAttestation
    # https://docs.microsoft.com/en-us/windows-server/security/guarded-fabric-shielded-vm/guarded-fabric-install-trusted-tpm-root-certificates
    ROOT_CERTIFICATES =
      begin
        pattern = File.expand_path(File.join(__dir__, "certificates", "*", "RootCA", "*.*"))
        Dir.glob(pattern).map do |filename|
          File.open(filename) { |file| OpenSSL::X509::Certificate.new(file) }
        end
      end

    class Error < StandardError; end

    attr_reader(
      :certify_info,
      :signature,
      :certified_key,
      :certificates,
      :signature_algorithm,
      :hash_algorithm,
      :qualifying_data,
      :root_certificates
    )

    def initialize(
      certify_info,
      signature,
      certified_key,
      certificates,
      qualifying_data,
      signature_algorithm: ALG_RSASSA,
      hash_algorithm: ALG_SHA256,
      root_certificates: ROOT_CERTIFICATES
    )
      @certify_info = certify_info
      @signature = signature

      @certified_key = certified_key
      @certificates = certificates
      @signature_algorithm = signature_algorithm
      @hash_algorithm = hash_algorithm
      @qualifying_data = qualifying_data
      @root_certificates = root_certificates
    end

    def key
      if valid?
        public_area.key
      end
    end

    def valid?
      certify_validator.valid?(aik_certificate.public_key) &&
        aik_certificate.conformant? &&
        trustworthy?
    end

    private

    def certify_validator
      @certify_validator ||=
        TPM::CertifyValidator.new(
          certify_info,
          signature,
          qualifying_data,
          certified_key,
          signature_algorithm: signature_algorithm,
          hash_algorithm: hash_algorithm
        )
    end

    def trustworthy?
      x509_certificates = certificates.map { |c| OpenSSL::X509::Certificate.new(c) }

      trust_store.verify(x509_certificates[0], x509_certificates[1..-1])
    end

    def trust_store
      @trust_store ||=
        OpenSSL::X509::Store.new.tap do |trust_store|
          root_certificates.each { |root_certificate| trust_store.add_cert(root_certificate) }
        end
    end

    def aik_certificate
      @aik_certificate ||= TPM::AIKCertificate.from_der(certificates.first)
    end

    def public_area
      @public_area ||= TPM::PublicArea.new(certified_key)
    end
  end
end
