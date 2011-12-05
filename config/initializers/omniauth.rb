Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '148114195293615', '74c97f5b5e94e132048d3bd9e51d1ca7'

  #provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  #provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end
