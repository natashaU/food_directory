class Meal < ApplicationRecord
  belongs_to :truck
  has_many :diets
end
