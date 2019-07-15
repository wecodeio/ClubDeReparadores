require "application_system_test_case"

class RepairersTest < ApplicationSystemTestCase
  setup do
    @repairer = repairers(:one)
  end

  test "visiting the index" do
    visit repairers_url
    assert_selector "h1", text: "Repairers"
  end

  test "creating a Repairer" do
    visit repairers_url
    click_on "New Repairer"

    click_on "Create Repairer"

    assert_text "Repairer was successfully created"
    click_on "Back"
  end

  test "updating a Repairer" do
    visit repairers_url
    click_on "Edit", match: :first

    click_on "Update Repairer"

    assert_text "Repairer was successfully updated"
    click_on "Back"
  end

  test "destroying a Repairer" do
    visit repairers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Repairer was successfully destroyed"
  end
end
