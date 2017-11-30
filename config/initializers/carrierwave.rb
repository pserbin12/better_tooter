CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     "#{ENV['AWS_ACCESS_KEY_ID']}",      # required
    aws_secret_access_key: "#{ENV['AWS_SECRET_ACCESS_KEY']}",  # required
    endpoint:              'https://s3.us-east-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'name_of_directory'                          # required
  config.fog_public     = false                                        # optional, defaults to true
end
