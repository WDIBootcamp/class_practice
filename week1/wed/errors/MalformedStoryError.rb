require 'pry'

class MalformedStoryError < ArgumentError

end

begin
	raise MalformedStoryError.new("Your story file was malformed.")
	binding.pry
# you can prevent an error from happening my "rescuing it"
rescue MalformedStoryError => myerror
	puts "Got a malformed story #{myerror}"
ensure #whatever is inside of ensure is going to get run even if an error happens
	puts  "This code is run no matter what"
end