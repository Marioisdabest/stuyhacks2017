require 'aws-sdk'
require 'dotenv'
require 'aws/s3'
require 's3'
Dotenv.load
AWS::S3::Base.establish_connection!(
  :access_key_id     => 'AKIAJUGG2UVKNVEQF5SQ',
  :secret_access_key => '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',
)
#USE FIRST TIME
#s3 = Aws::S3::Client.new(region: 'us-east-2')
#s3.create_bucket(bucket: 'images-raspberrypi')

pictures = ['raspberry.jpg','mascot.png','pie.jpg']
pictures.each do |x|
  s3 = Aws::S3::Resource.new(region:'us-east-2')
  obj = s3.bucket('images-raspberrypi').object(x)
  obj.upload_file(x)
end
#s3 = Aws::S3::Client.new(region: 'us-east-1')
#s3.create_bucket(bucket: 'eventrep')
