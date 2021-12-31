require "test_helper"

class QuatangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quatang = quatangs(:one)
  end

  test "should get index" do
    get quatangs_url
    assert_response :success
  end

  test "should get new" do
    get new_quatang_url
    assert_response :success
  end

  test "should create quatang" do
    assert_difference('Quatang.count') do
      post quatangs_url, params: { quatang: { ctkhuyenmai_id: @quatang.ctkhuyenmai_id, giamgiathem: @quatang.giamgiathem, soluongmua: @quatang.soluongmua, soluongtang: @quatang.soluongtang } }
    end

    assert_redirected_to quatang_url(Quatang.last)
  end

  test "should show quatang" do
    get quatang_url(@quatang)
    assert_response :success
  end

  test "should get edit" do
    get edit_quatang_url(@quatang)
    assert_response :success
  end

  test "should update quatang" do
    patch quatang_url(@quatang), params: { quatang: { ctkhuyenmai_id: @quatang.ctkhuyenmai_id, giamgiathem: @quatang.giamgiathem, soluongmua: @quatang.soluongmua, soluongtang: @quatang.soluongtang } }
    assert_redirected_to quatang_url(@quatang)
  end

  test "should destroy quatang" do
    assert_difference('Quatang.count', -1) do
      delete quatang_url(@quatang)
    end

    assert_redirected_to quatangs_url
  end
end
