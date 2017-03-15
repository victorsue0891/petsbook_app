class ChangeFoodTypeToFoodId < ActiveRecord::Migration[5.0]
  def change
    rename_column :meal_logs, :food_type, :food_id
  end
end
