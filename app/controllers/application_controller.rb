class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload, 'my_s3cr3t')
    end

    def auth_header
        request.headers['Authorizations']
    end

end
