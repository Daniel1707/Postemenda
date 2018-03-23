require 'sinatra'
require 'json'
require './lib/requests'


set :bind, '0.0.0.0'
set :public_folder, Proc.new { File.join(File.dirname(__FILE__), 'public') }

before do
  p params
end

get '/' do
  erb :index
end

post '/request' do
   request_method = params[:request_method]
   headers = params[:values].to_h
   body = params[:body]
   path = params[:path]

   response = Requests.send(request_method,headers,body,path)
   "RESPONSE>>>> #{response}"
end
