class Truck < ApplicationRecord
  has_many :meals, :dependent => :delete_all
  #has_many :diets, through :meals
end
