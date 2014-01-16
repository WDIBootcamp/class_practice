require 'sinatra'
require 'sinatra/reloader'


MY_USERS = [ {name: "John"}, {name: "Jane"}]

get "/user" do
	users = ""
	MY_USERS.each do |user|
		# we can write whatever we want in html
		users += "#{user[:name]} <br>"
	end
	users

end

# route block 
# the route is a map for any givin combination of a server + path
get "/users/:id" do 
	# params is a hash, and it's values are always strings
	id = params[:id].to_i
	My_USERS[id]
end

