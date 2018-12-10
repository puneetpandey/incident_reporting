require 'aws-sdk'

Aws.config.update({
  region: ENV.fetch('AWS_REGION'),
  credentials: Aws::Credentials.new(
    access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
    secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY')
    )
})