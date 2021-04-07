class Profile < ApplicationRecord
  belongs_to :user
  validates :firstname , presence: true, length: {minimum: 5, maximum: 20}
  validates :lastname , presence: true, length: {minimum: 5, maximum: 20}
  validates :address , presence: true, length: {minimum: 5, maximum: 20}
end
