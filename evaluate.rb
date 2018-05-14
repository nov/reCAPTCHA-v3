require 'rack/oauth2'

Rack::OAuth2.debug!

token = '03AJpayVFCGcWDwrCOBZYbVV6EPij6xVDKABdlZzVdfZdkGmsDAWWiR1JI4DG3d0F_r2whVE5mC4F-HAlRP7b9wLyMWO9YrYDD0uJoXXvYzE-XdW-ZgQftdU0W5_ZXDvXv9muS3P8QiZ4IkVlQcHAxlpuh61h5gEtd9dg80rX7xD3U3-to1s0rR8nlRuwDtunjv7_23wZoe-tuQsevp8fYDrO2EK1yFFdyM5dqv-UMenR9vd_XZEWFugex9cDYT12vW3VDmimVb5ATyy3gIBzinupm91KXmQ3OHhTacuZ8qaHgM5_KPfuV897wDwAToc03hwoovYNf7ztbl2qzkTecG756npifXBhXebLXtauTE766cem9lG5_YXc0V7NQBHDizR98h7F3lvOLSuRVcLt2VHm-w499hITgtYhE-pk-XH966NEzaSQV7TNr0bqYJJC7NG7n87zNHTzV'

response = Rack::OAuth2.http_client.post(
  'https://www.google.com/recaptcha/api/siteverify', {
    secret: '6LetCFkUAAAAALFUB0ZLgTimtOy6A2YlTU3hcwC5',
    response: token
  }
)

puts response.body
