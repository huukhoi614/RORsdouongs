require "application_system_test_case"

class DathangsTest < ApplicationSystemTestCase
  setup do
    @dathang = dathangs(:one)
  end

  test "visiting the index" do
    visit dathangs_url
    assert_selector "h1", text: "Dathangs"
  end

  test "creating a Dathang" do
    visit dathangs_url
    click_on "New Dathang"

    fill_in "Cuahang", with: @dathang.cuahang_id
    fill_in "Hinhthucmua", with: @dathang.hinhthucmua
    fill_in "Khachhang", with: @dathang.khachhang_id
    fill_in "Ngaydat", with: @dathang.ngaydat
    fill_in "Ngayduyet", with: @dathang.ngayduyet
    fill_in "Ngaygiao", with: @dathang.ngaygiao
    fill_in "Ngaynhan", with: @dathang.ngaynhan
    fill_in "Order status", with: @dathang.order_status_id
    fill_in "Phiship", with: @dathang.phiship
    fill_in "Tonggia", with: @dathang.tonggia
    fill_in "Vanchuyen", with: @dathang.vanchuyen_id
    click_on "Create Dathang"

    assert_text "Dathang was successfully created"
    click_on "Back"
  end

  test "updating a Dathang" do
    visit dathangs_url
    click_on "Edit", match: :first

    fill_in "Cuahang", with: @dathang.cuahang_id
    fill_in "Hinhthucmua", with: @dathang.hinhthucmua
    fill_in "Khachhang", with: @dathang.khachhang_id
    fill_in "Ngaydat", with: @dathang.ngaydat
    fill_in "Ngayduyet", with: @dathang.ngayduyet
    fill_in "Ngaygiao", with: @dathang.ngaygiao
    fill_in "Ngaynhan", with: @dathang.ngaynhan
    fill_in "Order status", with: @dathang.order_status_id
    fill_in "Phiship", with: @dathang.phiship
    fill_in "Tonggia", with: @dathang.tonggia
    fill_in "Vanchuyen", with: @dathang.vanchuyen_id
    click_on "Update Dathang"

    assert_text "Dathang was successfully updated"
    click_on "Back"
  end

  test "destroying a Dathang" do
    visit dathangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dathang was successfully destroyed"
  end
end
