require './shape'

class EqualSidedShape < Shape

	def are_you_equal_sided
		if @sides%2 == 0
			puts "You are an Equal Sided Shape!"
		end
	end

end