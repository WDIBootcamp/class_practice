# Returns the sum of two or more numbers
# *rest collects the excess parameters
def add_arguments(num1, num2, *rest)
 puts num1
 puts num2
 puts rest
 if rest.empty?
   return num1 + num2
 else
   rest.push(num1)
   rest.push(num2)
   rest.inject(0) {|sum,num| sum += num }
 end
end

puts "Adding multiple argumets: #{add_arguments(1,2,3,4,5)}"
# num1 = 1
# num2 = 2
# rest = [3, 4, 5]
# Adding multiple argument: 15

puts "Adding two arguments: #{add_arguments(2,3)}"
# num1 = 1
# num2 = 2
# rest = []
# Adding two arguments: 5