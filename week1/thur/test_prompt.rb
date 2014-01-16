 def prompt
 	match = false
 	answers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
 	puts "Give me an integer from 1 - 10"

 	while not match
		users_answer = gets.chomp

		answers.each do |number|
			if users_answer == number
				match = true
			end
		end

		if not match
			puts "that is not in range, try again"
		end
	end

end

prompt()