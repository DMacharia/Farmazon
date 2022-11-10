class Product < ActiveRecord::Base
    has_many :categories
    has_many :reviews
    has_many :users, through: :reviews
end