require 'test_helper'

class TripsControllerTest < ActionController::TestCase
  test "should get weather" do
    get :weather
    assert_response :success
  end

  test "should get activities" do
    get :activities
    assert_response :success
  end

end
