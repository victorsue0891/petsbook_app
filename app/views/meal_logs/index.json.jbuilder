json.array!(@meal_logs) do |meal_log|
  json.extract! meal_log, :id, :pet_id, :food_id, :food_amount, :photo_id
  json.url meal_log_url(meal_log, format: :json)
end
