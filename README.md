nginx-direct-data-transfer-sample
=================================

See [XSendfile - Nginx Community](http://wiki.nginx.org/XSendfile)

## Setup

~~~~
$ git clone https://github.com/tkuchiki/nginx-direct-data-transfer-sample
$ cd nginx-direct-data-transfer-sample
$ bundle install --path=vendor/bundle
$ bundle exec unicorn -c unicorn_config.rb -D
$ ruby -pne '$_.gsub!(/__DIR__/, ENV["PWD"])' nginx.conf.orig > nginx.conf
$ nginx -c $(pwd)/nginx.conf
~~~~
