require 'rack/oauth2'

Rack::OAuth2.debug!

token = '03AJpayVEMGk74tezvAd7Mazg5nXB--6CO4swxdWHQVQAL7xP0XLvxl_yffISHLhl2B2oNSJataYQx48muDixgKizILlnjBxBlklWzJuLSLEfWbfKh3ObIp-FwE172CsIkHkb1cq-SonSrBEZtyPF9fHor3Z_GV5QqALzn7nsjJQKIk13FqzErHPv2YwV7WFn43qMlZ5QM3NV94QXf9vn4wFtQY7l8PdHqcU-2PZM7YWBFnGPePmiKEBeMTa18kpMDD5yK3umLBZvvzFa2vu5ZGOt4fkyGdckUfXT2SGtEguXCLHlKu81yE7uuge9U5sAnhiqFny1xVtApYgdRgDVKnuzt3mrDrFNWkg'

response = Rack::OAuth2.http_client.post(
  'https://www.google.com/recaptcha/api/siteverify', {
    secret: '6LetCFkUAAAAALFUB0ZLgTimtOy6A2YlTU3hcwC5',
    response: token
  }
)

puts response.body
