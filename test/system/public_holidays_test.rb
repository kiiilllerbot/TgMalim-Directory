require "application_system_test_case"

class PublicHolidaysTest < ApplicationSystemTestCase
  setup do
    @public_holiday = public_holidays(:one)
  end

  test "visiting the index" do
    visit public_holidays_url
    assert_selector "h1", text: "Public Holidays"
  end

  test "creating a Public holiday" do
    visit public_holidays_url
    click_on "New Public Holiday"

    fill_in "Status", with: @public_holiday.status
    fill_in "User", with: @public_holiday.user_id
    click_on "Create Public holiday"

    assert_text "Public holiday was successfully created"
    click_on "Back"
  end

  test "updating a Public holiday" do
    visit public_holidays_url
    click_on "Edit", match: :first

    fill_in "Status", with: @public_holiday.status
    fill_in "User", with: @public_holiday.user_id
    click_on "Update Public holiday"

    assert_text "Public holiday was successfully updated"
    click_on "Back"
  end

  test "destroying a Public holiday" do
    visit public_holidays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Public holiday was successfully destroyed"
  end
end
