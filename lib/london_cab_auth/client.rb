module LondonCab
  module Auth
    class Client
      include Faraday::Connection
      include Faraday::Request
      include Api::Endpoints

      attr_accessor(*Config::ATTRIBUTES)

      def initialize(options = {})
        LondonCab::Auth::Config::ATTRIBUTES.each do |key|
          send("#{key}=", options[key] || LondonCab::Auth.config.send(key))
        end

        @logger ||= LondonCab::Auth::Config.logger || LondonCab::Auth::Logger.default
      end

      class << self
        def configure
          block_given? ? yield(Config) : Config
        end

        def config
          Config
        end
      end
    end
  end
end
