
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.application.config.facebook[:app_id], Rails.application.config.facebook[:app_secret], :scope => 'email, read_stream, read_friendlists, friends_likes, friends_status, offline_access', :display => 'popup', :client_options => {:ssl => { :ca_file => "#{Rails.root}/config/ca-bundle.crt" }}
end
