require 'rack'
load 'server.rb'

Rack::Handler::WEBrick.run(
  Server.new,
  :Port => 4000
)
