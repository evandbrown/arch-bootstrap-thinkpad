#!/bin/bash
# Install Puppet and librarian-puppet
sudo pacman -S --noconfirm ruby puppet
sudo gem install librarian-puppet

# Configure librarian and install modules
rm -rf /etc/puppet/modules
cp Puppetfile /etc/puppet/
cd /etc/puppet
sudo ~/.gem/ruby/2.2.0/bin/librarian-puppet install

# Run Puppet
cd -
sudo puppet apply site.pp

# Set password for user
echo "Set password for user"
passwd evan
