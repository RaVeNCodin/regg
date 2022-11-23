require "application_system_test_case"

class CoordinatorsTest < ApplicationSystemTestCase
  setup do
    @coordinator = coordinators(:one)
  end

  test "visiting the index" do
    visit coordinators_url
    assert_selector "h1", text: "Coordinators"
  end

  test "should create coordinator" do
    visit coordinators_url
    click_on "New coordinator"

    fill_in "Email", with: @coordinator.email
    fill_in "Name", with: @coordinator.name
    fill_in "Phone number", with: @coordinator.phone_number
    click_on "Create Coordinator"

    assert_text "Coordinator was successfully created"
    click_on "Back"
  end

  test "should update Coordinator" do
    visit coordinator_url(@coordinator)
    click_on "Edit this coordinator", match: :first

    fill_in "Email", with: @coordinator.email
    fill_in "Name", with: @coordinator.name
    fill_in "Phone number", with: @coordinator.phone_number
    click_on "Update Coordinator"

    assert_text "Coordinator was successfully updated"
    click_on "Back"
  end

  test "should destroy Coordinator" do
    visit coordinator_url(@coordinator)
    click_on "Destroy this coordinator", match: :first

    assert_text "Coordinator was successfully destroyed"
  end
end
