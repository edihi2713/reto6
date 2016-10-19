require 'sinatra'
require 'sinatra/cookies'

get '/' do

	unless cookies[:suma]
      cookies[:suma] = 0
     end
     
      @suma = cookies[:suma]
	  erb :index
end

post '/' do
  cookies[:suma]= cookies[:suma].to_i+1
  @suma = cookies[:suma]
  erb :index
end