require "test_helper"

class CtSpChesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get ct_sp_ches_new_url
    assert_response :success
  end

  test "should get show" do
    get ct_sp_ches_show_url
    assert_response :success
  end

  test "should get index" do
    get ct_sp_ches_index_url
    assert_response :success
  end

  test "should get edit" do
    get ct_sp_ches_edit_url
    assert_response :success
  end
end
