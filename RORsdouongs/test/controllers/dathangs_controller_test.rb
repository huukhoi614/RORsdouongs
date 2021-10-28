require "test_helper"

class DathangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dathang = dathangs(:one)
  end

  test "should get index" do
    get dathangs_url
    assert_response :success
  end

  test "should get new" do
    get new_dathang_url
    assert_response :success
  end

  test "should create dathang" do
    assert_difference('Dathang.count') do
      post dathangs_url, params: { dathang: { cuahang_id: @dathang.cuahang_id, hinhthucmua: @dathang.hinhthucmua, khachhang_id: @dathang.khachhang_id, ngaydat: @dathang.ngaydat, ngayduyet: @dathang.ngayduyet, ngaygiao: @dathang.ngaygiao, ngaynhan: @dathang.ngaynhan, order_status_id: @dathang.order_status_id, phiship: @dathang.phiship, tonggia: @dathang.tonggia, vanchuyen_id: @dathang.vanchuyen_id } }
    end

    assert_redirected_to dathang_url(Dathang.last)
  end

  test "should show dathang" do
    get dathang_url(@dathang)
    assert_response :success
  end

  test "should get edit" do
    get edit_dathang_url(@dathang)
    assert_response :success
  end

  test "should update dathang" do
    patch dathang_url(@dathang), params: { dathang: { cuahang_id: @dathang.cuahang_id, hinhthucmua: @dathang.hinhthucmua, khachhang_id: @dathang.khachhang_id, ngaydat: @dathang.ngaydat, ngayduyet: @dathang.ngayduyet, ngaygiao: @dathang.ngaygiao, ngaynhan: @dathang.ngaynhan, order_status_id: @dathang.order_status_id, phiship: @dathang.phiship, tonggia: @dathang.tonggia, vanchuyen_id: @dathang.vanchuyen_id } }
    assert_redirected_to dathang_url(@dathang)
  end

  test "should destroy dathang" do
    assert_difference('Dathang.count', -1) do
      delete dathang_url(@dathang)
    end

    assert_redirected_to dathangs_url
  end
end
