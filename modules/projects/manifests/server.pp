class projects::server {
  include nginx
  include virtualbox
  include mongodb
  include mysql
  include redis
  include heroku
  include imagemagick

  # Vagrant stuff
  include vagrant
  vagrant::plugin { 'vagrant-berkshelf':
  }

  vagrant::plugin { 'vagrant-omnibus':
  }

  vagrant::plugin { 'vagrant-digitalocean':
  }

  vagrant::plugin { 'vagrant-vbguest':
  }

  vagrant::plugin { 'vagrant-cachier':
  }

  ruby::gem { 'Berkshelf':
    gem   => 'berkshelf',
    ruby  => '2.0.0',
  }

  # ElasticBeanstalk
  package {
    [
      "aws-elasticache",
      "aws-elasticbeanstalk",
      "aws-iam-tools",
      "curl-ca-bundle",
      "graphicsmagick",
      "ec2-api-tools"
    ]:
  }
}
