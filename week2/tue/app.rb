require "rack"

class HelloWorld
	
	def call(env)
		# response code
		[200, {"Content-Type" => "text/html"}, ["Hello World!"]]
	end

end

# WEBrick is the server
# Rack is the middle man
Rack::Handler::WEBrick.run(HelloWorld.new, :Port => 8000)