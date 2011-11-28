Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '159662890731276', '25dc7a1e13e0dc65ef6606e234e01639'
  
  #provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  #provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end
