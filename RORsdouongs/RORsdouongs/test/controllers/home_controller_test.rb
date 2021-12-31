require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get trangchu" do
    get home_trangchu_url
    assert_response :success
  end
end
