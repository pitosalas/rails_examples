require "application_system_test_case"

class KeyvaluesTest < ApplicationSystemTestCase
  setup do
    @keyvalue = keyvalues(:one)
  end

  test "visiting the index" do
    visit keyvalues_url
    assert_selector "h1", text: "Keyvalues"
  end

  test "creating a Keyvalue" do
    visit keyvalues_url
    click_on "New Keyvalue"

    fill_in "Key", with: @keyvalue.key
    fill_in "Value", with: @keyvalue.value
    click_on "Create Keyvalue"

    assert_text "Keyvalue was successfully created"
    click_on "Back"
  end

  test "updating a Keyvalue" do
    visit keyvalues_url
    click_on "Edit", match: :first

    fill_in "Key", with: @keyvalue.key
    fill_in "Value", with: @keyvalue.value
    click_on "Update Keyvalue"

    assert_text "Keyvalue was successfully updated"
    click_on "Back"
  end

  test "destroying a Keyvalue" do
    visit keyvalues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Keyvalue was successfully destroyed"
  end
end
