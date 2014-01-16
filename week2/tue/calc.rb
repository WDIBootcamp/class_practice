require 'sinatra'
require 'sinatra/reloader'


# get "/add/:num1/:num2" do 
# 	num1 = params[:num1].to_i
# 	num2 = params[:num2].to_i
# 	solution = num1 + num2

# 	"adding #{num1} to #{num2}.......solution = #{solution}"
	
# end

def convert(arr)
	arr.map! { |e| e.to_f }
end

get "/add/*" do
	n = params[:splat][0].split('/')
	for i in (0...n.length)
		n[i] = n[i].to_f
	end

	n = n.inject{ |sum, n| sum + n }
	"solution = #{n}"
end

get "/subtract/:num1/:num2" do 
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	solution = num1 - num2

	"adding #{num1} to #{num2}.......solution = #{solution}"
	
end

# get "/multiply/:num1/:num2" do 
# 	num1 = params[:num1].to_i
# 	num2 = params[:num2].to_i
# 	solution = num1 * num2

# 	"multiplying #{num1} to #{num2}.......solution = #{solution}"
	
# end

get "/multiply/:num1/:num2" do 
	num1 = params[:num1].to_f
	num2 = params[:num2].to_f
	solution = num1 * num2

	"multiplying #{num1} to #{num2}.......solution = #{solution}"
	
end

get "/divide/:num1/:num2" do 
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	if num2 == 0
		solution = "you can't divide by zero"
	else 
		solution = num1 / num2
	end

	"dividing #{num1} to #{num2}.......solution = #{solution}"
	
end


#one last way to do it:
get "/:operator/:num1/:num2" do

	opeartor = params[:operator]
	num1 = params[:num1]
	num2 = params[:num2]

	case operator
	when "add"

	when "subtract"

	when "multiply"

	when "divide"
		
	end

end