require_relative 'notification'

class Displayer
    def initialize(notification)
        #When created add itself as an observer.
        notification.add_observer(self)
        puts "notification has been made an observer."
    end

    def update(notification)
        #callback to observer
        puts "0000000000000000000000000000000000000000000000000000000000000000000000000000"
        puts "Weather Report #{notification.title} was published on #{notification.date}\n"
        
    end
end

## Driver ##
#notification = BlogNotification.new("Test Title", "Weather Warning Ish", Time.now)
#displayer = Displayer.new(notification)

#sleep 5
#notification.update_date()

#sleep 5
#notification.update_date()

