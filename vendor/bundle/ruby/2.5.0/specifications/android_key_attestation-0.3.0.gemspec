# -*- encoding: utf-8 -*-
# stub: android_key_attestation 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "android_key_attestation".freeze
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/bdewater/android_key_attestation/blob/master/CHANGELOG.md", "homepage_uri" => "https://github.com/bdewater/android_key_attestation", "source_code_uri" => "https://github.com/bdewater/android_key_attestation" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Bart de Water".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-02-17"
  s.homepage = "https://github.com/bdewater/android_key_attestation".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.0.6".freeze
  s.summary = "Android key attestation verification".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.8"])
      s.add_development_dependency(%q<rubocop>.freeze, ["= 0.75.0"])
    else
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.8"])
      s.add_dependency(%q<rubocop>.freeze, ["= 0.75.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.8"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.75.0"])
  end
end
