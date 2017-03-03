module LondonCab
  module Auth
    module Config
      extend self

      ATTRIBUTES = [
        :endpoint,
        :user_agent,
        :username,
        :password,
        :logger
      ].freeze

      attr_accessor(*Config::ATTRIBUTES)

      def reset
        self.endpoint   = 'http://65.182.108.16:22710'
        self.user_agent = "LondonCab::Auth/#{LondonCab::Auth::VERSION}"
        self.username   = nil
        self.password   = nil
        self.logger     = nil
      end

      reset
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
