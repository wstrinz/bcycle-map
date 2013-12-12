require 'sinatra'
require 'open-uri'

get '/bikes.json' do
  content_type :json
  open('http://api.bcycle.com/services/mobile.svc/ListKiosks').read
end

get '/' do
  send_file 'map.html'
end
