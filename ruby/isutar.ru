#!rackup

require_relative './lib/isutar/web.rb'

if ENV["ENABLE_LINEPROF"] == "1"
  require 'rack-lineprof'
  use Rack::Lineprof, profile: "./lib/isuda/web.rb"
end

run Isutar::Web
