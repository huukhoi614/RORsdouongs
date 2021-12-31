require "test_helper"

class SanphamControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sanpham_index_url
    assert_response :success
  end

  test "should get chitiet" do
    get sanpham_chitiet_url
    assert_response :success
  end
end
