module LondonCab
  module Auth
    module Faraday
      module Connection
        private

        def connection
          options = { headers: { 'Content-Type' => 'application/x-www-form-urlencoded' } }

          options[:headers]['User-Agent'] = user_agent if user_agent

          ::Faraday::Connection.new(endpoint, options) do |connection|
            connection.use ::Faraday::Request::UrlEncoded
            connection.use ::FaradayMiddleware::ParseJson
            connection.use ::Faraday::Response::RaiseError

            connection.response :logger, logger if logger
            connection.adapter ::Faraday.default_adapter
          end
        end
      end
    end
  end
end
