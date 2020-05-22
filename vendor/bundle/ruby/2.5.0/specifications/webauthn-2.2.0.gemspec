# -*- encoding: utf-8 -*-
# stub: webauthn 2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "webauthn".freeze
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/cedarcode/webauthn-ruby/issues", "changelog_uri" => "https://github.com/cedarcode/webauthn-ruby/blob/master/CHANGELOG.md", "source_code_uri" => "https://github.com/cedarcode/webauthn-ruby" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gonzalo Rodriguez".freeze, "Braulio Martinez".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-03-14"
  s.description = "WebAuthn ruby server library \u2015 Make your application a W3C Web Authentication conformant\n    Relying Party and allow your users to authenticate with U2F and FIDO2 authenticators.".freeze
  s.email = ["gonzalo@cedarcode.com".freeze, "braulio@cedarcode.com".freeze]
  s.homepage = "https://github.com/cedarcode/webauthn-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4".freeze)
  s.rubygems_version = "3.0.6".freeze
  s.summary = "WebAuthn ruby server library".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<android_key_attestation>.freeze, ["~> 0.3.0"])
      s.add_runtime_dependency(%q<awrence>.freeze, ["~> 1.1"])
      s.add_runtime_dependency(%q<bindata>.freeze, ["~> 2.4"])
      s.add_runtime_dependency(%q<cbor>.freeze, ["~> 0.5.9"])
      s.add_runtime_dependency(%q<cose>.freeze, ["~> 0.11.0"])
      s.add_runtime_dependency(%q<openssl>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<safety_net_attestation>.freeze, ["~> 0.4.0"])
      s.add_runtime_dependency(%q<securecompare>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<tpm-key_attestation>.freeze, ["~> 0.7.0"])
      s.add_development_dependency(%q<appraisal>.freeze, ["~> 2.2.0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.17", "< 3.0"])
      s.add_development_dependency(%q<byebug>.freeze, ["~> 11.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.8"])
      s.add_development_dependency(%q<rubocop>.freeze, ["= 0.80.1"])
      s.add_development_dependency(%q<rubocop-rspec>.freeze, ["~> 1.38.1"])
    else
      s.add_dependency(%q<android_key_attestation>.freeze, ["~> 0.3.0"])
      s.add_dependency(%q<awrence>.freeze, ["~> 1.1"])
      s.add_dependency(%q<bindata>.freeze, ["~> 2.4"])
      s.add_dependency(%q<cbor>.freeze, ["~> 0.5.9"])
      s.add_dependency(%q<cose>.freeze, ["~> 0.11.0"])
      s.add_dependency(%q<openssl>.freeze, ["~> 2.0"])
      s.add_dependency(%q<safety_net_attestation>.freeze, ["~> 0.4.0"])
      s.add_dependency(%q<securecompare>.freeze, ["~> 1.0"])
      s.add_dependency(%q<tpm-key_attestation>.freeze, ["~> 0.7.0"])
      s.add_dependency(%q<appraisal>.freeze, ["~> 2.2.0"])
      s.add_dependency(%q<bundler>.freeze, [">= 1.17", "< 3.0"])
      s.add_dependency(%q<byebug>.freeze, ["~> 11.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.8"])
      s.add_dependency(%q<rubocop>.freeze, ["= 0.80.1"])
      s.add_dependency(%q<rubocop-rspec>.freeze, ["~> 1.38.1"])
    end
  else
    s.add_dependency(%q<android_key_attestation>.freeze, ["~> 0.3.0"])
    s.add_dependency(%q<awrence>.freeze, ["~> 1.1"])
    s.add_dependency(%q<bindata>.freeze, ["~> 2.4"])
    s.add_dependency(%q<cbor>.freeze, ["~> 0.5.9"])
    s.add_dependency(%q<cose>.freeze, ["~> 0.11.0"])
    s.add_dependency(%q<openssl>.freeze, ["~> 2.0"])
    s.add_dependency(%q<safety_net_attestation>.freeze, ["~> 0.4.0"])
    s.add_dependency(%q<securecompare>.freeze, ["~> 1.0"])
    s.add_dependency(%q<tpm-key_attestation>.freeze, ["~> 0.7.0"])
    s.add_dependency(%q<appraisal>.freeze, ["~> 2.2.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.17", "< 3.0"])
    s.add_dependency(%q<byebug>.freeze, ["~> 11.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.8"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.80.1"])
    s.add_dependency(%q<rubocop-rspec>.freeze, ["~> 1.38.1"])
  end
end
