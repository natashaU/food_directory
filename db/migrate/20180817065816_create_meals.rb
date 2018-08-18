class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :meal_name
      t.integer :price
      t.references :truck, foreign_key: true
  
      t.timestamps
    end
  end
end
