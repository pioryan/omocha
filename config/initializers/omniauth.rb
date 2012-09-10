
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.application.config.facebook[:app_id], Rails.application.config.facebook[:app_secret], {
    :display => 'popup', 
    :scope => 'email, read_stream, read_friendlists, friends_likes, friends_status, offline_access', 
    :client_options => {
      :ssl => { 
        :ca_file => Rails.application.config.ca_certs[:ca_file] 
      }
    }
  }

  provider :twitter, Rails.application.config.twitter[:consumer_key], Rails.application.config.twitter[:consumer_secret]

  provider :google_oauth2, Rails.application.config.google[:client_id], Rails.application.config.google[:client_secret], {
    access_type: 'online',
    approval_prompt: '',
    :client_options => {
      :ssl => { 
        :ca_file => Rails.application.config.ca_certs[:ca_file] 
      }
    }
  }
end
