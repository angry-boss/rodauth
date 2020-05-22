source 'https://rubygems.org'

if RUBY_VERSION < '2.0'
  gem 'rake', '< 10'
  gem 'json', '<1.8.5'
else
  gem 'rake'
  gem 'json'
end

if RUBY_VERSION < '2.2'
  gem 'rack', '<2'
  gem 'rack-test', '< 0.7.0'
end

platforms :ruby do
  if RUBY_VERSION < '2.0'
    gem "pg", '<0.19.0'
  else
    gem "pg"
  end

  if RUBY_VERSION < '2.0'
    gem "mysql2", '<0.5'
  else
    gem "mysql2"
  end

  gem 'sqlite3'
end

platforms :jruby do
  gem 'jdbc-postgres'
  gem 'jdbc-mysql'
  gem 'jdbc-sqlite3'
end

if RUBY_VERSION < '2.3'
  gem 'capybara', '<3.2'
else
  gem 'capybara'
end

if RUBY_VERSION < '2.1'
  gem 'addressable', '< 2.4'
end

if RUBY_VERSION < '2.1'
  gem 'nokogiri', '< 1.7'
end

if RUBY_VERSION < '2.0'
  gem 'mime-types', '< 3'
end

if RUBY_VERSION < '2.1'
  gem 'jwt', '< 2'
else
  gem 'jwt'
end

if RUBY_VERSION < '2.0'
  gem 'rotp', '< 4'
elsif RUBY_VERSION < '2.1'
  gem 'rotp', '< 5'
else
  gem 'rotp'
end

platforms :ruby do
  # cbor dependency not supported on JRuby
  if RUBY_VERSION > '2.4'
    gem 'webauthn'
  elsif RUBY_VERSION > '2.3'
    gem 'webauthn', '<2.2.0'
  end
end

gem 'rubyzip'
gem 'rqrcode'
gem 'rack_csrf'
gem 'xpath'
gem 'sequel'
gem 'roda'
gem 'tilt'
gem 'bcrypt'
gem 'mail'
gem 'minitest-hooks', '>= 1.1'
gem 'minitest-global_expectations'

if RUBY_VERSION < '2.4.0'
  # Until mintest 5.12.0 is fixed
  gem 'minitest', '5.11.3'
else
  gem 'minitest', '>= 5.7.0'
end