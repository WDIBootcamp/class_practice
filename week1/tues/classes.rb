class Person

	# attr_reader :name, :age
	# attr_writer :name, :age
	@@population = []

	attr_accessor :name, :age
	def initialize (namem, age)
		@name = name
		@age = age
		p self
		# self referes to this instance of the person class
		@@population << self

	end

	def self.population
		@@population
	end

	# getter method @age
	# def age
	# 	@age
	# end

	# setter method for @age
	# def age=(other)
	# 	@age = other
	# end

	# def name
	# 	@name
	# end

	# def name=(other)
	# 	@name = other
	# end

end

