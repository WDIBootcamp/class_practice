class Employee

	attr_accessor :name, :title

	@@employee_count = 0

    def initialize(name, title)
    	@name = name
    	@title = title
    	@@employee_count += 1
    end

    def introduce
     	"Hi, my name is #{@name}"
    end

    #class method
    def self.count
    	@@employee_count
    end

    def self.resign
    	@@employee_count -= 1
    end

    def clock_in
    	Time.now
    end

    def clock_out
    	Time.now
    end


end