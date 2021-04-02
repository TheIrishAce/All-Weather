require_relative 'notification'

class Displayer
    def initialize(notification)
        #When created add itself as an observer.
        puts "Ran displayer.rb | Initialized, observer added."
        notification.add_observer(self)
        
    end

    def update(notification)
        #callback to observer
        puts('Ran displayer.rb | Update Notification (Callback)')
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

