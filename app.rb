require 'sinatra'
require 'json'

set :port, ENV['PORT'] || 4567
set :server, 'puma'

def canary_response
  content_type :json
  { canary: 'canary' }.to_json
end

%w[get post put delete patch options head].each do |method|
  send(method, '*') { canary_response }
end

