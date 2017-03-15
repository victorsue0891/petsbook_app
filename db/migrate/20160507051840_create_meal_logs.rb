class CreateMealLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_logs do |t|
      t.integer :pet_id
      t.integer :food_type
      t.integer :food_amount
      t.string :photo_id

      t.timestamps
    end
  end
end
