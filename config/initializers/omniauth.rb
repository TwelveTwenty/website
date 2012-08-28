OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, APP_CONFIG["facebook_key"], APP_CONFIG["facebook_secret"]
end