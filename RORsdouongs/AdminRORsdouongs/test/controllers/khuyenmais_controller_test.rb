require "test_helper"

class KhuyenmaisControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get khuyenmais_show_url
    assert_response :success
  end

  test "should get new" do
    get khuyenmais_new_url
    assert_response :success
  end

  test "should get index" do
    get khuyenmais_index_url
    assert_response :success
  end

  test "should get edit" do
    get khuyenmais_edit_url
    assert_response :success
  end
end
