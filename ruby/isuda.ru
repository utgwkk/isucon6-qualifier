#!rackup

require_relative './lib/isuda/web.rb'

if ENV["ENABLE_LINEPROF"] == "1"
  require 'rack-lineprof'
  use Rack::Lineprof
end

run Isuda::Web
