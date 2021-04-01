require_relative 'subject'

puts('yerrrrrrrooooooo')

class BlogNotification
    include Subject
    attr_reader :title, :category
    attr_accessor :date

    def initialize(title, category, date)
        super()
        @title = title
        @category = category
        @date = date
    end

    def update_title=(new_title)
        @title = new_title
        notify_observers
    end

    def update_category=(new_category)
        @category = new_category
        notify_observers
    end

    def update_date()
        @date = Time.now
        notify_observers
    end

end