module LondonCab
  module Auth
    module Api
      module Endpoints
        module Auth
          def auth(options = {})
            options = { username: username,
                        password: password,
                        grant_type: :password,
                        client_id: 'AGMIdentityServer',
                        client_secret: 'secret',
                        scope: 'read' }.merge(options)
            post('Connect/Token', options)
          end
        end
      end
    end
  end
end
