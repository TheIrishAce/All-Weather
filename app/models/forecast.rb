class Forecast < ApplicationRecord
    has_many :rainfall, :dependent => :delete_all
    validates :day , presence: true, length: {minimum: 6, maximum: 9}
    validates :date , presence: true, length: {minimum: 8}
    validates :forecast , presence: true, length: {minimum: 10}
end
