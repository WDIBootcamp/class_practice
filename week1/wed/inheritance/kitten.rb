require './cat'

class Kitten < Cat

	def initialize(age, gender, name, fur_color)
		@age = age
		@gender = gender
		@name = name
		@fur_color = fur_color
	end

end