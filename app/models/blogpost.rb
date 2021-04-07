class Blogpost < ApplicationRecord
    has_many :comment, :dependent => :delete_all
    validates :title , presence: true, length: {minimum: 10}
    validates :category , presence: true, length: {minimum: 10}
    validates :author , presence: true, length: {minimum: 10}
    validates :image_url , presence: true
end
