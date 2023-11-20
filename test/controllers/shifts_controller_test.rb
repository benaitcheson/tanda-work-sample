require "test_helper"

class ShiftsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shifts_index_url
    assert_response :success
  end

  test "should get show" do
    get shifts_show_url
    assert_response :success
  end
end
