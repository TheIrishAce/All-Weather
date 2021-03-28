class Blogpost < ApplicationRecord
    has_many :comment, :dependent => :delete_all 
end
