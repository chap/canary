require 'sinatra'
require 'json'

set :port, ENV['PORT'] || 4567
set :server, 'puma'

any '*' do
  content_type :json
  { canary: 'canary' }.to_json
end

