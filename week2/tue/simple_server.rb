require "webrick"

# Get the path for th eserver using the relatvie directory specified
root = File.expand_path(".")
# Create a new instance of a webrick server
# and pass it two parameters 
# :Port is the port we'll acess in the browser
server = WEBrick::HTTPServer.new :Port => 8000, :DocumentRoot => root
# Go to localhost: 8000

server.mount_proc "/hello" do |req, res|
	res.body = "Hello, world!"
	#res.body = "#{req.host}, #{req.port}"
	# => "localhost, 8000"
end

trap "INT" do 
	server.shutdown
end
server.start