require "test_helper"

class CtchonthemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ctchonthems_index_url
    assert_response :success
  end

  test "should get edit" do
    get ctchonthems_edit_url
    assert_response :success
  end

  test "should get show" do
    get ctchonthems_show_url
    assert_response :success
  end

  test "should get new" do
    get ctchonthems_new_url
    assert_response :success
  end
end
