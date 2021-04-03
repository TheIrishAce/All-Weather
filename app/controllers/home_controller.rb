require 'day_of_week/current_day'

class HomeController < ApplicationController
  def index
    #used for current day and date.
    @date = CurrentDate.instance.dayname
  end
end