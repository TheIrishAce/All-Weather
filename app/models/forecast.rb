class Forecast < ApplicationRecord
    has_many :rainfall, :dependent => :delete_all
end
