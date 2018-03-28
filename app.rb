require 'sinatra'
require 'json'
require './controllers/request_controller'
require './controllers/script_controller'


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
   headers = Hash[*params[:values]]
   body = params[:body]
   path = params[:path]

   request_controller = RequestController.new(request_method, headers, body, path)
   reponse = request_controller.call_request
   "RESPONSE>>>> #{reponse.to_s}"
end

post '/script' do
  script = params[:script]

  script_controller = ScriptController.new(script)
  script_controller.execute_script
end
