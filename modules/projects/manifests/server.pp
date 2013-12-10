class projects::server {
  include nginx
  include mysql
  include virtualbox

  # ElasticBeanstalk
  package {
    [
      "aws-elasticache",
      "aws-elasticbeanstalk",
      "aws-iam-tools",
      "curl-ca-bundle",
      "graphicsmagick"
    ]:
  }
}
