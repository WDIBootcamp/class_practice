require "sinatra"
require "sinatra/reloader"

get "/" do 
	#localhost:4567/?greeting=hello
	greeting = params[:greeting]
	@greeting = greeting
	@show_greeting = true
	erb :index #embedded ruby 
end

