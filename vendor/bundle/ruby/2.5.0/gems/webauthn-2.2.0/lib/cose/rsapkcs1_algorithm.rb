# frozen_string_literal: true

require "cose"
require "cose/algorithm/signature_algorithm"
require "cose/error"
require "cose/key/rsa"
require "openssl/signature_algorithm/rsapkcs1"

class RSAPKCS1Algorithm < COSE::Algorithm::SignatureAlgorithm
  attr_reader :hash_function

  def initialize(*args, hash_function:)
    super(*args)

    @hash_function = hash_function
  end

  private

  def signature_algorithm_class
    OpenSSL::SignatureAlgorithm::RSAPKCS1
  end

  def to_pkey(key)
    case key
    when COSE::Key::RSA
      key.to_pkey
    when OpenSSL::PKey::RSA
      key
    else
      raise(COSE::Error, "Incompatible key for algorithm")
    end
  end
end

COSE::Algorithm.register(RSAPKCS1Algorithm.new(-257, "RS256", hash_function: "SHA256"))
COSE::Algorithm.register(RSAPKCS1Algorithm.new(-258, "RS384", hash_function: "SHA384"))
COSE::Algorithm.register(RSAPKCS1Algorithm.new(-259, "RS512", hash_function: "SHA512"))
COSE::Algorithm.register(RSAPKCS1Algorithm.new(-65535, "RS1", hash_function: "SHA1"))
