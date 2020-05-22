# -*- encoding: utf-8 -*-
# stub: openssl-signature_algorithm 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "openssl-signature_algorithm".freeze
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/cedarcode/openssl-signature_algorithm/blob/master/CHANGELOG.md", "homepage_uri" => "https://github.com/cedarcode/openssl-signature_algorithm", "source_code_uri" => "https://github.com/cedarcode/openssl-signature_algorithm" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gonzalo".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-01-30"
  s.description = "    This tiny library introduces `OpenSSL::SignatureAlgorithm::ECDSA`,\n    `OpenSSL::SignatureAlgorithm::RSAPSS` and `OpenSSL::SignatureAlgorithm::RSAPKCS1`,\n    so that you can reason in terms of signature algorithms when signing and/or\n    verifying signatures\u2015instead of keys.\n".freeze
  s.email = ["gonzalo@cedarcode.com".freeze]
  s.homepage = "https://github.com/cedarcode/openssl-signature_algorithm".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.0.6".freeze
  s.summary = "Signature Algorithm abstraction for openssl ruby gem".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version
end
