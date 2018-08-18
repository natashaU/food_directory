class Diet < ApplicationRecord
  #belongs_to :meal
  #has_many :diets_meals
  #has_many :meals, through: :diets_meals
  has_and_belongs_to_many :meal, through :diets_meals
end
