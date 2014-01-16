# methods.rb

puts "Ruby Methods"


# methods with no arguments
def add_two_variables_1()
	num1 = 3
	num2 = 4
	result = num1 + num2
	return result

end

def add_two_variables_2()
	num1 = 3
	num2 = 4
	return num1 + num2

end

def add_two_variables_3()
	num1 = 3
	num2 = 4
	result = num1 + num2

end

puts add_two_variables_1()
puts add_two_variables_2()
puts add_two_variables_3()


# methods with two arguments
# returns the sum of two numeric arugments
def add_two_arguments_1(num1, num2)
	result = num1 + num2
	return result
end

def add_two_arguments_2(num1, num2)
	num1 + num2
end

puts add_two_arguments_1(10, 50)
result = add_two_arguments_2(100, 2)

puts "The result is #{result}" 

#addition of floats
first_number= 3.3
second_number = 4.1
float_result = add_two_arguments_2(first_number, second_number)
puts float_result
puts "My float result rounded is: #{float_result.round(2)}"


puts "-----------------------"

def multiply_by_2 (num1, num2=2)
	num1 * num2
end
puts multiply_by_2(5)
puts "Now i will trick the system and the multiply 5 by 3!"
puts multiply_by_2(5, 3)


def add_array_of_numbers(num_array)
	# sum = 0
	#num_array.each	{|num| sum+=num}
	num_array.inject {|sum, num| sum + num}
end

number_array = [1, 2, 3, 4, 5]

puts "Here is #{number_array} added up together: "
puts add_array_of_numbers(number_array)
