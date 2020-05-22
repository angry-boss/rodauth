$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require 'minitest/autorun'
require 'rack/test'


ENV['RACK_ENV'] = 'test'


def create_app(&block)
  c = Class.new(Roda)
  c.class_eval(&block)
  c
end

describe 'Cors' do

  describe 'with default options' do
    let(:app) do
      create_app do
        plugin :all_verbs
        plugin :cors

        route do |r|
          r.root { 'wazaaaaaa' }
        end
      end
    end

    it 'sets Access-Control-Allow-Origin header to "*" on '\
       'or test environment' do
      get '/'
      last_response['Access-Control-Allow-Origin'].must_be :ok?
      #last_response.must_be :ok?
      last_response.body['wazaaaaaa'].must_equal
      # last_response.body.must_equal 'wazaaaaaa'
      # last_response['Access-Control-Allow-Origin'].must_equal '*'
    end

    it 'sets Access-Control-Allow-Origin header to "*" on '\
       'or development environment' do
      old_rack_env = ENV['RACK_ENV']
      ENV['RACK_ENV'] = 'development'
      get '/'
      last_response.must_be :ok?
      last_response.body.must_equal 'wazaaaaaa'
      last_response['Access-Control-Allow-Origin'].must_equal '*'
      ENV['RACK_ENV'] = old_rack_env
    end

    it 'does nothing in other environments' do
      old_rack_env = ENV['RACK_ENV']
      ENV['RACK_ENV'] = 'something'
      get '/'
      last_response.must_be :ok?
      last_response.body.must_equal 'wazaaaaaa'
      last_response['Access-Control-Allow-Origin'].must_be :nil?
      ENV['RACK_ENV'] = old_rack_env
    end

    it 'handles OPTIONS requests' do
      options '/'
      last_response.must_be :ok?
      last_response.body.must_be :empty?
      last_response['Access-Control-Allow-Origin'].must_equal '*'
      last_response['Access-Control-Allow-Headers'].must_equal 'Content-Type'
    end
  end

  describe 'with empty allowed_origins' do
    let(:app) do
      create_app do
        plugin :cors, allowed_origins: []

        route do |r|
          r.root { 'wazaaaaaa' }
        end
      end
    end

    it 'sets Access-Control-Allow-Origin header to "*" on '\
       'or test environment' do
      get '/'
      last_response.must_be :ok?
      last_response.body.must_equal 'wazaaaaaa'
      last_response['Access-Control-Allow-Origin'].must_equal '*'
    end

    it 'sets Access-Control-Allow-Origin header to "*" on '\
       'or development environment' do
      old_rack_env = ENV['RACK_ENV']
      ENV['RACK_ENV'] = 'development'
      get '/'
      last_response.must_be :ok?
      last_response.body.must_equal 'wazaaaaaa'
      last_response['Access-Control-Allow-Origin'].must_equal '*'
      ENV['RACK_ENV'] = old_rack_env
    end

    it 'does nothing in other environments' do
      old_rack_env = ENV['RACK_ENV']
      ENV['RACK_ENV'] = 'something'
      get '/'
      last_response.must_be :ok?
      last_response.body.must_equal 'wazaaaaaa'
      last_response['Access-Control-Allow-Origin'].must_be :nil?
      ENV['RACK_ENV'] = old_rack_env
    end
  end

  describe 'with a single allowed_origin' do
    let(:app) do
      create_app do
        plugin :cors, allowed_origins: ['http://hips.com']

        route do |r|
          r.root { 'wazaaaaaa' }
        end
      end
    end

    it 'sets Access-Control-Allow-Origin header to that origin' do
      get '/'
      last_response.must_be :ok?
      last_response.body.must_equal 'wazaaaaaa'
      last_response['Access-Control-Allow-Origin'].must_equal 'http://hips.com'
    end
  end

  describe 'with multiple allowed_origins' do
    let(:app) do
      create_app do
        plugin :cors, allowed_origins: ['http://hips.com', 'http://dontlie.com']

        route do |r|
          r.root { 'wazaaaaaa' }
        end
      end
    end

    it "sets Access-Control-Allow-Origin header to the request's "\
       "origin if it's present in allowed_origins" do
      header 'Origin', 'http://dontlie.com'
      get '/'
      last_response.must_be :ok?
      last_response.body.must_equal 'wazaaaaaa'
      last_response['Access-Control-Allow-Origin'].must_equal 'http://dontlie.com'
    end

    it "doesn't set Access-Control-Allow-Origin header if request's "\
       'origin is not present in allowed_origins' do
      header 'Origin', 'http://whatever.com'
      get '/'
      last_response.must_be :ok?
      last_response.body.must_equal 'wazaaaaaa'
      last_response['Access-Control-Allow-Origin'].must_be :nil?
    end
  end
end
