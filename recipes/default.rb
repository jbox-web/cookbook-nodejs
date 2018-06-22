# Install GPG
package 'dirmngr'

# Install HTTPS for apt
package 'apt-transport-https'

# Install NodeJS repository
apt_repository 'stretch-yarn-binary' do
  uri          'https://dl.yarnpkg.com/debian'
  key          'https://dl.yarnpkg.com/debian/pubkey.gpg'
  components   ['main']
  distribution 'stable'
end

# Install Yarn repository
apt_repository 'stretch-nodejs-binary' do
  uri          'https://deb.nodesource.com/node_10.x'
  key          'https://deb.nodesource.com/gpgkey/nodesource.gpg.key'
  components   ['main']
end

# Install packages
package 'nodejs'
package 'yarn'
