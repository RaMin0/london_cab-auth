require 'logger'

module LondonCab
  module Auth
    class Logger < ::Logger
      def self.default
        @logger ||= begin
          logger = new STDOUT
          logger.progname = "LondonCab::Auth/#{VERSION}"
          logger.level    = Logger::WARN
          logger
        end
      end
    end
  end
end
