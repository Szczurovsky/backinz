# This file is used by Rack-based servers to start the application.




require_relative "config/environment"

use Rack::Cors do
    allow do
      origins 'https://inzynierka-test.herokuapp.com/'
      resource '*',
          :headers => :any,
          :methods => [:get, :post, :delete, :put, :patch, :options],
          withCredentials: true
    end
end

run Rails.application
Rails.application.load_server
