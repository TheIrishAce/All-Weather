require_relative '../../app/models/blogpost'

class Displayer         
	def initialize(blogpost)    
		blogpost.add_observer(self)
	end

	def update(blogpost)       
	# callback for observer
		print " student #{blogpost.name} has a new address:  #{blogpost.address}\n"
	end
end


## Driver ###
blogpost = Blogpost.new("John")
displayer = Displayer.new(student)
## note that by changing the address of the student because the displayer is an observer of the student the displayer is immediately notifed when changes occur in the student
student.address = "Mayor Street, IFSC"
