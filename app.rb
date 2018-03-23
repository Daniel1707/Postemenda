require 'sinatra'
require 'json'

set :bind, '0.0.0.0'
set :public_folder, Proc.new { File.join(File.dirname(__FILE__), 'public') }

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
