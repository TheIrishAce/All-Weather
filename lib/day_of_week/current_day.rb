require 'date'
require 'singleton'

class CurrentDate
    include Singleton

    def dayname()
        @current_day = Time.now.strftime("%A, %d/%m/%Y")
        return @current_day
    end

    def abbr_dayname()
        @current_day_abbr = Time.now.strftime("%a, %d/%m/%Y")
        return @currnet_day
    end
end


#@date = CurrentDate.instance
#puts @date.dayname

#date2 = CurrentDate.instance
#puts "is date the same instance as date2 #{date.equal?(date2) }\n\n"