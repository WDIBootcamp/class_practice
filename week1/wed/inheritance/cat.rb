# class Sublcalss < Superclass
# the '<' means inherits from
require './animal'

class Cat < Animal

	def initialize (age, gender, name)
		@age = age
		@gender = gender
		@name = name
	end

end
