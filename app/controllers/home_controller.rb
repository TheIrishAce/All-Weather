require 'day_of_week/current_day'

class HomeController < ApplicationController
  def index
    @date = CurrentDate.instance.dayname
  end
end
