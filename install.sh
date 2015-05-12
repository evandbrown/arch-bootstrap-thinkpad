#!/bin/bash
# Install Puppet and librarian-puppet
pacman -S --noconfirm ruby puppet
gem install librarian-puppet

# Configure librarian and install modules
rm -rf /etc/puppet/modules
cp Puppetfile /etc/puppet/
cd /etc/puppet
/root/.gem/ruby/2.2.0/bin/librarian-puppet install

# Allow group to write to puppet
chmod -R g+w /etc/puppet

# Run Puppet
cd -
puppet apply site.pp

# Set password for user
echo "Set password for user"
passwd evan
