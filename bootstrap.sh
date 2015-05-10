#!/bin/bash
sudo pacman -S ruby puppet
sudo gem install librarian-puppet
cd /etc/puppet/ && rm rf modules
cp Puppetfile .
sudo ~/.gem/ruby/2.2.0/bin/librarian-puppet install
cd ~
sudo puppet apply site.pp
