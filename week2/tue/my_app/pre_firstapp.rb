require 'sinatra'

# route block 
# the route is a map for any givin combination of a server + path
get "/" do 
	"Hello, world!"

end

get '/example' do
	"example"
end

get '/hello' do
  params
  "Hello You"
end

# this has to be written before :name param or else it wont run
get '/hello/world' do
	"Hello WORLD!"
end

get '/hello/:name' do
	"hello #{params[:name]}"
end 