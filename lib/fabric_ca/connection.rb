require 'faraday_middleware'

Dir[File.expand_path('faraday_middleware/*.rb', __dir__)].each { |f| require_relative f }

module FabricCA
  module Connection
    private

    def connection(opts = {})
      Faraday::Connection.new(opts.merge(options)) do |connection|
        connection.use ::FaradayMiddleware::EncodeJson
        connection.use FabricCA::FaradayMiddleware::BasicAuth, username, password
        connection.use FabricCA::FaradayMiddleware::TokenAuth, identity
        connection.use ::Faraday::Request::UrlEncoded
        connection.use ::FaradayMiddleware::Mashify
        connection.use ::Faraday::Response::ParseJson
        connection.use FabricCA::FaradayMiddleware::RaiseHttpException, logger
        connection.adapter(adapter)
      end
    end

    def options
      opts = connection_opts || {}

      opts[:url] = endpoint

      opts
    end

    def adapter
      Faraday.default_adapter
    end
  end
end
