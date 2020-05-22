# -*- encoding: utf-8 -*-
# stub: tpm-key_attestation 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "tpm-key_attestation".freeze
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/cedarcode/tpm-key_attestation/blob/master/CHANGELOG.md", "homepage_uri" => "https://github.com/cedarcode/tpm-key_attestation", "source_code_uri" => "https://github.com/cedarcode/tpm-key_attestation" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gonzalo".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-02-25"
  s.homepage = "https://github.com/cedarcode/tpm-key_attestation".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.0.6".freeze
  s.summary = "TPM Key Attestation verifier".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bindata>.freeze, ["~> 2.4"])
      s.add_runtime_dependency(%q<openssl-signature_algorithm>.freeze, ["~> 0.3.0"])
    else
      s.add_dependency(%q<bindata>.freeze, ["~> 2.4"])
      s.add_dependency(%q<openssl-signature_algorithm>.freeze, ["~> 0.3.0"])
    end
  else
    s.add_dependency(%q<bindata>.freeze, ["~> 2.4"])
    s.add_dependency(%q<openssl-signature_algorithm>.freeze, ["~> 0.3.0"])
  end
end
