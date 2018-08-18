class CreateJoinTableMealDiet < ActiveRecord::Migration[5.2]
  def change
    create_join_table :meals, :diets do |t|
       t.index [:meal_id, :diet_id]
       t.index [:diet_id, :meal_id]
    end
  end
end
