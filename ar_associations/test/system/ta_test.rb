require "application_system_test_case"

class TaTest < ApplicationSystemTestCase
  setup do
    @tum = ta(:one)
  end

  test "visiting the index" do
    visit ta_url
    assert_selector "h1", text: "Ta"
  end

  test "creating a Tum" do
    visit ta_url
    click_on "New Tum"

    fill_in "Course", with: @tum.course_id
    fill_in "Student", with: @tum.student_id
    click_on "Create Tum"

    assert_text "Tum was successfully created"
    click_on "Back"
  end

  test "updating a Tum" do
    visit ta_url
    click_on "Edit", match: :first

    fill_in "Course", with: @tum.course_id
    fill_in "Student", with: @tum.student_id
    click_on "Update Tum"

    assert_text "Tum was successfully updated"
    click_on "Back"
  end

  test "destroying a Tum" do
    visit ta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tum was successfully destroyed"
  end
end
