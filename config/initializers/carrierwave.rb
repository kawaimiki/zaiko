CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_S3_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_S3_SECRET_ACCESS_KEY'],
    region: 'ap-northeast-1'
  }
 
    case Rails.env
    when 'development'
        config.fog_directory  = 'kawaimiki'
        config.asset_host = 'https://kawaimiki.s3.amazonaws.com'
        config.fog_public = false
    when 'production'
        config.fog_directory  = 'kawaimiki'
        config.asset_host = 'https://kawaimiki.s3.amazonaws.com'
    end
end