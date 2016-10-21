require 'sinatra'


get '/' do
  @suma = params[:suma].to_i
  erb :index
end


post '/' do
  @suma= params[:num].to_i + 1
  erb :index
end

