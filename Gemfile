MODE = 'git'  #REMOTE MODE
#MODE = 'path' #LOCAL MODE

# REMOTE CONFIGURATION (DEFAULT)
GEMS_PATH = 'http://rubygems.org'
SPREE_PATH = 'https://github.com/spree'

## lOCAL PQR CONFIGURATION
#GEMS_PATH = 'http://localhost/rubygems/'
#SPREE_PATH = 'file:///home/pqr/work/jaf/spree'


########################################################################

source GEMS_PATH

# Provides basic authentication functionality for testing parts of your engine
gem 'spree_auth_devise', 	:"#{MODE}" => "#{SPREE_PATH}/spree_auth_devise", :branch => '2-0-stable'

gemspec
