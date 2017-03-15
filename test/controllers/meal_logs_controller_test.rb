require 'test_helper'

class MealLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meal_log = meal_logs(:one)
  end

  test "should get index" do
    get meal_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_meal_log_url
    assert_response :success
  end

  test "should create meal_log" do
    assert_difference('MealLog.count') do
      post meal_logs_url, params: { meal_log: { food_amount: @meal_log.food_amount, food_type: @meal_log.food_type, pet_id: @meal_log.pet_id, photo_id: @meal_log.photo_id } }
    end

    assert_redirected_to meal_log_path(MealLog.last)
  end

  test "should show meal_log" do
    get meal_log_url(@meal_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_meal_log_url(@meal_log)
    assert_response :success
  end

  test "should update meal_log" do
    patch meal_log_url(@meal_log), params: { meal_log: { food_amount: @meal_log.food_amount, food_type: @meal_log.food_type, pet_id: @meal_log.pet_id, photo_id: @meal_log.photo_id } }
    assert_redirected_to meal_log_path(@meal_log)
  end

  test "should destroy meal_log" do
    assert_difference('MealLog.count', -1) do
      delete meal_log_url(@meal_log)
    end

    assert_redirected_to meal_logs_path
  end
end
