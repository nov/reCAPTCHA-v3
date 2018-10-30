require 'rack/oauth2'

Rack::OAuth2.debug!

loop do
  print 'token: ' and STDOUT.flush
  token = gets.chop
  Rack::OAuth2.http_client.post(
    'https://www.google.com/recaptcha/api/siteverify', {
      secret: '6LetCFkUAAAAALFUB0ZLgTimtOy6A2YlTU3hcwC5',
      response: token
    }
  )
end
