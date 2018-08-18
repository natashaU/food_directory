class Meal < ApplicationRecord
  belongs_to :truck
  has_and_belongs_to_many :meals
end
