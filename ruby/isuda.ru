#!rackup

require_relative './lib/isuda/web.rb'

if ENV["ENABLE_LINEPROF"] == "1"
  require 'rack-lineprof'
  use Rack::Lineprof, profile: "./lib/isuda/web.rb"
end

run Isuda::Web
