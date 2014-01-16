require "sinatra"
require "sinatra/reloader"

#we are creating a database which is an array just to store data
MY_DB = []


get "/" do 
	#localhost:4567/?greeting=hello
	# greeting = params[:greeting]
	# @greeting = greeting
	# @show_greeting = true
	# erb :index #embedded ruby --- this defines what view we are going to use
	
	redirect "/animals"
end

# the INDEX METHOD/ROUTE for an Animal
get "/animals" do
	@animals = MY_DB

	erb :index 
end



# we know that this is post because we are adding to the website
# the CREATE METHOD
post "/animals" do 
	# raises an error and throws the params.inspect at you (which is the hash!!)
	# raise params.inspect 

	animal = params[:animal]
	MY_DB << animal
	id = MY_DB.length()-1

	#must return a string or a redirect
	redirect "/animals/#{id}"

end

# THE SHOW METHOD/ROUTE for a Anmial
get "/animals/:id" do

	# id is referint to each animal index in the array MY_DB 
	id = params[:id].to_i #params is a string so we need to convert it

	# looking up the animals in the DB
	@animal = MY_DB[id]

	erb :show
end


