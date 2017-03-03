module LondonCab
  module Auth
    module Api
      class Error < ::Faraday::Error
        attr_reader :response

        def initialize(message, response = nil)
          @response = response
          super(message)
        end
      end
    end
  end
end
