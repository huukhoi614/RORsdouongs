require "test_helper"

class TaikhoanControllerTest < ActionDispatch::IntegrationTest
  test "should get giaodien" do
    get taikhoan_giaodien_url
    assert_response :success
  end
end
