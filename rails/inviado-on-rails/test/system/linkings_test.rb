require "application_system_test_case"

class LinkingsTest < ApplicationSystemTestCase
  setup do
    @linking = linkings(:one)
  end

  test "visiting the index" do
    visit linkings_url
    assert_selector "h1", text: "Linkings"
  end

  test "creating a Linking" do
    visit linkings_url
    click_on "New Linking"

    fill_in "Description", with: @linking.description
    fill_in "Linkable", with: @linking.linkable_id
    fill_in "Linkable type", with: @linking.linkable_type
    fill_in "Raw", with: @linking.raw
    click_on "Create Linking"

    assert_text "Linking was successfully created"
    click_on "Back"
  end

  test "updating a Linking" do
    visit linkings_url
    click_on "Edit", match: :first

    fill_in "Description", with: @linking.description
    fill_in "Linkable", with: @linking.linkable_id
    fill_in "Linkable type", with: @linking.linkable_type
    fill_in "Raw", with: @linking.raw
    click_on "Update Linking"

    assert_text "Linking was successfully updated"
    click_on "Back"
  end

  test "destroying a Linking" do
    visit linkings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Linking was successfully destroyed"
  end
end
