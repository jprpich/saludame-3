require 'sinatra'
name = ""

get '/' do 
  erb :index
end

get '/saluda' do
  @name = name
  erb :saluda
end

post '/saluda' do
  name = params[:name]
  redirect "/saluda"
end

