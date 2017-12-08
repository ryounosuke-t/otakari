require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['SECRET_ACCESS_KEY'],
    region: 'us-east-2'
  }

    case Rails.env
    when 'development'
        config.fog_directory  = 'upload-test1021'
        config.asset_host = 'https://s3.us-east-2.amazonaws.com/upload-test1021'
    when 'production'
        config.fog_directory  = 'upload-test1021'
        config.asset_host = 'https://s3.us-east-2.amazonaws.com/upload-test1021'
    end
end
