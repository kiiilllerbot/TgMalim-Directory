require 'test_helper'

class PublicHolidaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public_holiday = public_holidays(:one)
  end

  test "should get index" do
    get public_holidays_url
    assert_response :success
  end

  test "should get new" do
    get new_public_holiday_url
    assert_response :success
  end

  test "should create public_holiday" do
    assert_difference('PublicHoliday.count') do
      post public_holidays_url, params: { public_holiday: { status: @public_holiday.status, user_id: @public_holiday.user_id } }
    end

    assert_redirected_to public_holiday_url(PublicHoliday.last)
  end

  test "should show public_holiday" do
    get public_holiday_url(@public_holiday)
    assert_response :success
  end

  test "should get edit" do
    get edit_public_holiday_url(@public_holiday)
    assert_response :success
  end

  test "should update public_holiday" do
    patch public_holiday_url(@public_holiday), params: { public_holiday: { status: @public_holiday.status, user_id: @public_holiday.user_id } }
    assert_redirected_to public_holiday_url(@public_holiday)
  end

  test "should destroy public_holiday" do
    assert_difference('PublicHoliday.count', -1) do
      delete public_holiday_url(@public_holiday)
    end

    assert_redirected_to public_holidays_url
  end
end
