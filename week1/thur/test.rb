# #test

# # Week 1 Quiz 1

# ## Ruby Arrays

# 1. Create an array of the days of the week
#  - Create a variable named days_of_the_week as an array of the following: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday

days_of_the_week = ["Monday", "Tuesday", "Wednsday", "Thursday", "Friday", "Saturday", "Sunday"]

 
# 2. My calendar says the first day is Sunday...
#  - Remove Sunday from the last postion and move it to the first position. Use array methods.
 
days_of_the_week.unshift(days_of_the_week.pop)

# ## Ruby Hashes

# Given the following data structure:

```ruby 
users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Tripta" => {
    :twitter => "triptagupta",
    :favorite_numbers => [12, 14, 85],
  },
}
# ```

# - Write code that would add the number 7 to Erik's favorite numbers.

user["Erik"][:favorite_numbers].push(7)




# - Write code that would add yourself to the users hash.
# - Write code that returns the array of Erik's favorite numbers.
# - Write code that returns the smallest of Erik's favorite numbers.
    
# ## Ruby Methods 
    
#     * Describe the output of the folowing
        
#         def greet()
#             greeting = "Hello!" + welcome()
#         end

#         def welcome()
#             welcoming  = "Welcome to the event." + direct_to_seat()
#         end
        The output would be a string that says "Welcome to the event. Please take a seat"
#         def direct_to_seat()
#             "Please take a seat"
#         end
        The output would be a string that says "Please take a seat"
#         puts greet()
        The output would be a string that says "Hello! Welcome to the Event. Please take a seat"
#     * Describe the output of the following
    
#         def my_func()
#             puts "going down 1!"
#             my_second_func()
#             puts "going up 1!"
#         end
        
#         def my_second_func()
#             puts "going down 2!"
#             my_third_func()
#             puts "going up 2!"
#         end
        
#         my_third_func()
#             puts "going down 3"
#             puts "going up 3"
#         def 
 
#         my_func()

		The output would be a string that says: 
		"going down 1! 
		going down 2! 
		going down 3 
		going up 3 
		going up 2!
		going up 1!"

#     * Define a method that prompts a user with a `question` and checks it against an array of `answers` until the answer is valid.
#     * Write a `swap` method that takes an array and two indexes two swap
    
    def prompt
    	puts "Give me an integer from 1 - 10"
    	users_answer = gets.chomp
    	answers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]

    	until answers.include?(users_answer)
    		puts "that is not in range, try again"
    		users_answer = gets.chomp
    	end

	end

#     * Write a `swap` method that takes an array and two indexes two swap

# ## Ruby Classes

#     * Given the class definition below
    
#        class Animal
#             @@count = 0
#             def initialize(name)
#                 @name = name
#                 @@count += 1
#             end
            
#             def self.count
#                 @@count
#             end
            
#             def name
#                 @name
#             end
            
#             def name=(other)
#                 @name = other
#             end
#        end
     
#      ** What are the instance variables
#      ** What are the class variables
#      ** What is the term for the Animal#name  method
#      ** What is the term for the Animal#name= method
#      ** What are the class methods