CarrierWave.configure do | config|
  if Rails.env.development? || Rails.env.test?
    config.storage = :file
    else
      config.storage = :aws
      config.aws_acl = 'public_read'
      config.aws_credentials = {
        access_key_id: ENV['AWS_ACCESS_KEY'],
        secret_access_key: ENV['AWS_SECRET_KEY'],
        region: 'eu-west-1'
      }
      config.aws_bucket = ENV['AWS_BUCKET_NAME']
  end
end
