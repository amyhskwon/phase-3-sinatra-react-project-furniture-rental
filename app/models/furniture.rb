class Furniture < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews
end