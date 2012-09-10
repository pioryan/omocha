
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.application.config.facebook[:app_id], Rails.application.config.facebook[:app_secret], {
    :display => 'popup', 
    :scope => 'email, read_stream, read_friendlists, friends_likes, friends_status, offline_access', 
    :client_options => {
      :ssl => { 
        :ca_file => Rails.application.config.facebook[:ca_file] 
      }
    }
  }
end
