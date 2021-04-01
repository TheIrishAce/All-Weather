require 'date'
require 'singleton'

class CurrentDate
    include Singleton
    #attr_accessor :current_day, :current_day_abbr

    def self.dayname()
        @current_day = Time.now.strftime("%A, %d/%m/%Y")
    end

    def self.abbr_dayname()
        @current_day = Time.now.strftime("%a, %d/%m/%Y")
    end
end


#@date = CurrentDate.instance
#puts @date.dayname

#date2 = CurrentDate.instance
#puts "is date the same instance as date2 #{date.equal?(date2) }\n\n"