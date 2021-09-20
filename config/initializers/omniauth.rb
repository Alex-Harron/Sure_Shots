Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['880178991809-ei5flsj210o9r1jsanp6d7i6a0090d8m.apps.googleusercontent.com'], ENV['MdEbRpz8-hrS-vqn8S3TUiLW']
end