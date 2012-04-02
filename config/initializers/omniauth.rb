
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :salesforce, ENV['SALESFORCE_KEY'], ENV['SALESFORCE_SECRET']
  provider OmniAuth::Strategies::DatabaseDotCom, ENV['DATABASE_DOT_COM_KEY'], ENV['DATABASE_DOT_COM_SECRET']
end

