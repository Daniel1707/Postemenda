require 'sinatra'
require 'json'

set :bind, '0.0.0.0'

get '/' do
  erb :index
end

post '/request' do
   request_method = params[:request_method]
   headers = params[:headers]
   body = params[:body]
   path = params[:path]

    params.to_s
end
