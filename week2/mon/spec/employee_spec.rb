require 'employee'
require 'spec_helper'

seed =  

describe Employee do

	#do create the employee's each time you do before(:each)
	before(:each) do 
	  @employee = Employee.new("YourName", "secretary")
	  @employee1 = Employee.new("Mickey", "CEO")
	end

  it "has a name " do
    @employee.name.should eq("YourName")

    # this syntax also works
    # employee.name.should == "YourName"
  end

  it "can change names" do
  	@employee.name = "Donald"
  	@employee.name.should eq ("Donald")
  end

  it "has a title" do
  	@employee.title.should eq ("secretary")
  	@employee1.title.should eq ("CEO")
  end

  it "introduces itself" do
  	@employee.introduce.should eq("Hi, my name is YourName")

  end

  it "can clock in" do
  	@employee.clock_in.should eq(Time.now)
  end

  it "can clock out" do
  	@employee.clock_out.should eq(Time.now)
  end

  # it "updates employee count" do 
  # 	Employee.employee_count.should eq (1)
  # end

  it "counts number of employees" do
  	Employee.count.should eq (2)
  end

  after (:each) do 
  	Employee.resign
  	Employee.resign
  end

end