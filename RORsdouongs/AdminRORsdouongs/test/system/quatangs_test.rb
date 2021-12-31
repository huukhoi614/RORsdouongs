require "application_system_test_case"

class QuatangsTest < ApplicationSystemTestCase
  setup do
    @quatang = quatangs(:one)
  end

  test "visiting the index" do
    visit quatangs_url
    assert_selector "h1", text: "Quatangs"
  end

  test "creating a Quatang" do
    visit quatangs_url
    click_on "New Quatang"

    fill_in "Ctkhuyenmai", with: @quatang.ctkhuyenmai_id
    fill_in "Giamgiathem", with: @quatang.giamgiathem
    fill_in "Soluongmua", with: @quatang.soluongmua
    fill_in "Soluongtang", with: @quatang.soluongtang
    click_on "Create Quatang"

    assert_text "Quatang was successfully created"
    click_on "Back"
  end

  test "updating a Quatang" do
    visit quatangs_url
    click_on "Edit", match: :first

    fill_in "Ctkhuyenmai", with: @quatang.ctkhuyenmai_id
    fill_in "Giamgiathem", with: @quatang.giamgiathem
    fill_in "Soluongmua", with: @quatang.soluongmua
    fill_in "Soluongtang", with: @quatang.soluongtang
    click_on "Update Quatang"

    assert_text "Quatang was successfully updated"
    click_on "Back"
  end

  test "destroying a Quatang" do
    visit quatangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quatang was successfully destroyed"
  end
end
