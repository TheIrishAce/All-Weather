module Subject
	def initialize
		puts('Initilized subject.rb | Observers initalized')
		@observers=[]
	end

	def add_observer(observer)
		puts('Subject.rb | Observer added')
		@observers << observer
	end

	def delete_observer(observer)
		puts('Subject.rb | Observer removed')
		@observers.delete(observer)
	end

	def notify_observers
		@observers.each do |observer|
			puts('Subject.rb | Observer has been notified')
			observer.update(self)
		end
	end
end