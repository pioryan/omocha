PAPERCLIP_DEFAULT_OPTIONS = {
    :storage => Rails.application.config.paperclip_storage,
    :path => Rails.application.config.paperclip_path,
    :url => Rails.application.config.paperclip_url,
    :whiny => false,
    :processors => [:thumbnail]
}

if Rails.env.production?
  PAPERCLIP_DEFAULT_OPTIONS.merge!(
      {:s3_credentials => Rails.application.config.s3_credentials}
  )
end

Paperclip.interpolates(:dev_test_url) do |attachment, style|
  protocol = Rails.application.config.paperclip_protocol
  hostname =  Rails.application.config.default_host
  "#{protocol}://#{hostname}/#{attachment.path(style).gsub(%r{^/}, "")}".gsub('public/', '')
end

Paperclip.interpolates(:timestamp) do |attachment, style|
  attachment.instance_read(:updated_at).to_i
end

Paperclip.interpolates(:custom_url) do |attachment, style|
  "avatars/#{style}/missing.png"
end



Paperclip.interpolates(:extension) do |attachment, style_name|
  filename = attachment.instance_read(:file_name)
  filename[filename.index(".")..-1]
end