begin
  require 'byebug'
rescue LoadError
end

require 'london_cab_auth/version'
require 'london_cab_auth/logger'
require 'london_cab_auth/config'

# API
require 'faraday'
require 'faraday_middleware'
require 'json'
require 'logger'

require 'london_cab_auth/api/error'
require 'london_cab_auth/faraday/connection'
require 'london_cab_auth/faraday/request'
require 'london_cab_auth/api/endpoints'
require 'london_cab_auth/client'
