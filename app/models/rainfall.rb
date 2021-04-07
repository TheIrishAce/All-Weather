class Rainfall < ApplicationRecord
  belongs_to :forecast
  validates :amount , presence: true, length: {minimum: 0, maximum: 5}, :numericality => { :greater_than_or_equal_to => 0 }
  validates :forecast_id , presence: true, length: {minimum: 0, maximum: 1}
end
