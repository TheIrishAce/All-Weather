require 'singleton'

class BlogNotification
	include Singleton
	
	def get_recent_blog(posts)
		puts "loading file #{posts}..."
	end

end


### driver ###
# create an instance (the only one!) of the AppConfig by using the method instance of the Singleton
note1 = BlogNotification.instance
note1.get_recent_blog(@blogposts)



# calling again the instance method will not create a new object, instead will return the existing object/instance
note2 = BlogNotification.instance

puts "singleton demo"
puts "is conf1 the same instance as conf2 #{note1.equal?(note2) }\n\n"


# we cannot use directly new to create objects when implementing the singleton pattern
conf3 = AppConfig.new rescue(puts $!) 