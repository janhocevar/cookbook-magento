# coding: utf-8
name 'magento'
maintainer 'Yevgeniy Viktorov'
maintainer_email 'craftsman@yevgenko.me'
license 'Apache 2.0'
description 'Magento app stack'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.7.1'
recipe 'magento', 'Prepares app stack for magento deployments'

%w(debian ubuntu centos redhat fedora amazon).each do |os|
  supports os
end

%w(apt yum apache2 nginx mysql openssl php yum-epel
   mysql-chef_gem).each do |cb|
  depends cb
end

depends 'php-fpm', '>= 0.6.4'
