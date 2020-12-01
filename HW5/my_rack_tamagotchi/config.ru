require './app/pet'

use Rack::Reloader, 0
use Rack::Static, :urls => ["/public"]
use Rack::Auth::Basic do |username, password| #якщо було реалізовано вчителем чого б не використати
username == "panda"
  password == "1"
end
run Pet
