require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get grades_for_school" do
    get :grades_for_school
    assert_response :success
  end

end
