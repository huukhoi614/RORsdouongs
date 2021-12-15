require "test_helper"

class CtkhuyenmaisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ctkhuyenmais_index_url
    assert_response :success
  end

  test "should get new" do
    get ctkhuyenmais_new_url
    assert_response :success
  end

  test "should get show" do
    get ctkhuyenmais_show_url
    assert_response :success
  end

  test "should get edit" do
    get ctkhuyenmais_edit_url
    assert_response :success
  end
end
