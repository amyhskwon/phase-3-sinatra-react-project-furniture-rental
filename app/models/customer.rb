class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :furnitures, through: :reviews

end