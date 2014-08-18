$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))
require ::File.expand_path('../app.rb', __FILE__)

use Rack::Auth::Basic do |username, password|
  username == 'user' && password == 'pass'
end

run Sinatra::Application
