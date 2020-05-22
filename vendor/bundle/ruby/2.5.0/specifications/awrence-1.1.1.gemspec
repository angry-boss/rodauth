# -*- encoding: utf-8 -*-
# stub: awrence 1.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "awrence".freeze
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Dave Hrycyszyn".freeze, "Stuart Chinery".freeze]
  s.date = "2020-02-01"
  s.description = "Have you ever needed to automatically convert Ruby-style snake_case to CamelCase or camelBack hash keys?\n\nAwrence to the rescue.\n\nThis gem recursively converts all snake_case keys in a hash structure to camelBack.".freeze
  s.email = ["dhrycyszyn@zonedigital.com".freeze, "stuart.chinery@gmail.com".freeze]
  s.homepage = "https://github.com/futurechimp/awrence".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.6".freeze
  s.summary = "Camelize your snake keys when working with JSON APIs".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<byebug>.freeze, ["~> 11.1"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.14"])
      s.add_development_dependency(%q<minitest-fail-fast>.freeze, ["~> 0.1"])
      s.add_development_dependency(%q<minitest-macos-notification>.freeze, ["~> 0.3"])
      s.add_development_dependency(%q<minitest-reporters>.freeze, ["~> 1.4"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.79"])
    else
      s.add_dependency(%q<byebug>.freeze, ["~> 11.1"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.14"])
      s.add_dependency(%q<minitest-fail-fast>.freeze, ["~> 0.1"])
      s.add_dependency(%q<minitest-macos-notification>.freeze, ["~> 0.3"])
      s.add_dependency(%q<minitest-reporters>.freeze, ["~> 1.4"])
      s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.79"])
    end
  else
    s.add_dependency(%q<byebug>.freeze, ["~> 11.1"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.14"])
    s.add_dependency(%q<minitest-fail-fast>.freeze, ["~> 0.1"])
    s.add_dependency(%q<minitest-macos-notification>.freeze, ["~> 0.3"])
    s.add_dependency(%q<minitest-reporters>.freeze, ["~> 1.4"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.79"])
  end
end
