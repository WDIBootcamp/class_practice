require './EqualSidedShape'

class Square < EqualSidedShape

	def presentation
		if @sides == 4 && @corners == 4
			puts "I am a square. I have #{@corners} corners, #{@sides} 
			sides and I am #{@color}"
		else 
			puts "I am not a square because I have #{@sides} sides and #{@corners} corners"
		end

	end

end 

