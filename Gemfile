CONFIG = :pqr
###########################################################################
case CONFIG
when :pqr
  GEMS_PATH = 'http://localhost/rubygems/'
  SPREE_DEVISE_PATH = 'file:///home/pqr/work/jaf/spree'
else
  GEMS_PATH = 'http://rubygems.org'
  SPREE_DEVISE_PATH = 'https://github.com/spree'
end
########################################################################

source GEMS_PATH

gem 'spree_auth_devise', 	:git => "#{SPREE_DEVISE_PATH}/spree_auth_devise", :branch => '2-0-stable'

gemspec
