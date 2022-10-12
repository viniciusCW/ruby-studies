'O token pelo protocolo HTTP vai no header no campo "Authorization". Ex:'
'Authorization: Token erg234f232f244'

'Para usar essa autenticação, deve incluir o módule e usa-se a função "authenticate_or_request_with_http_token"
e compara-se os tokens da seguinte forma'

include ActionController::HttpAuthentication::Token::ControllerMethods

def authenticate
  authenticate_or_request_with_http_token do |token, options|
    # Compare the tokens in a time-constant manner, to mitigate
    # timing attacks.
    ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
  end
end


