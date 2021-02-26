if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAJM23WXWSAGCBD7PQ'],
      :aws_secret_access_key => ENV['FCpKNpDFgZAgW/K9uTc3z+tjKtQlFuLicX6wnaK5']
    }
    config.fog_directory     =  ENV['sample0226']
  end
end