require 'day_of_week/current_day'
require 'date'

class WeekdaysController < ApplicationController
    def day
        puts "weekdays controller ran !!!"
        @current_day = CurrentDate.dayname()
        puts @current_day
    end
    helper_method :day
end