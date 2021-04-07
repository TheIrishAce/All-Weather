class Comment < ApplicationRecord
  belongs_to :blogpost
  validates :message , presence: true, length: {minimum: 10}
end
