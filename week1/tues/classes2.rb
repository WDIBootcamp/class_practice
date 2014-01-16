
story_hash = {
"question" => "Welcome to the haunted hotel. What room would you like to go to?",
"room 1" => "you're dead",
"room 2" => {"question" => "You picked a good room. What would you like to do?",
"sleep" => "You're rested for the morning",
"stay up all night" => "You might have anxiety issues."}
}


class Adventure

	# accepts one variable: the story_hash
	# method makes an instance of adventure with the attribute of story_hash
	def initialize(story_hash)
 		#save this as an instance varaible for good
		@story_hash = story_hash
	end

	# accepts two varaibles, question: the k that == "question", 
	# and options: the k's that != "question"
	# method prints the question, the options and gets the user's response
	def prompt (question, options)
		puts "#{question}: \n #{options}"
		res = gets.chomp
	end

	def prompt_n_chomp (question, options)
		res = prompt(question, options)

		until options.include?(res)
			puts "Your input was invalid"
			res = prompt(question, options)
		end
		res
	end

	def get_options (curr_story_hash)
		curr_story_hash.keys.select { |x| x != "question"}

	end

	def start ()
		curr_story_hash = @story_hash
		question = curr_story_hash["question"]
		options = get_options(curr_story_hash)

		until options.nil?
			res = prompt_n_chomp(question, options)

			# if the res that the user gives us leads to another hash
			if curr_story_hash[res].is_a?(Hash)
				curr_story_hash = curr_story_hash[res]
				question = curr_story_hash["question"]
				options = get_options(curr_story_hash)
			else	
				puts curr_story_hash[res]
				options = nil
			end

		end

		"END OF STORY!"
	end

end

adv = Adventure.new(story_hash)
adv.start()
