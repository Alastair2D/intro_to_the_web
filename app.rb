require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Welcome to the secret world"
end

get '/random_cat' do
  @random_name = ['Amigo', 'Oscar', 'Viking'].sample
  erb(:index)
end

get '/named_cat' do 
  p params
  @name = params[:name]
  erb(:index)
end
