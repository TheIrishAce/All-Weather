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