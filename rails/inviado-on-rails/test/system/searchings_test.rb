require "application_system_test_case"

class SearchingsTest < ApplicationSystemTestCase
  setup do
    @searching = searchings(:one)
  end

  test "visiting the index" do
    visit searchings_url
    assert_selector "h1", text: "Searchings"
  end

  test "creating a Searching" do
    visit searchings_url
    click_on "New Searching"

    fill_in "Description", with: @searching.description
    fill_in "Raw", with: @searching.raw
    fill_in "Searchable", with: @searching.searchable_id
    fill_in "Searchable type", with: @searching.searchable_type
    click_on "Create Searching"

    assert_text "Searching was successfully created"
    click_on "Back"
  end

  test "updating a Searching" do
    visit searchings_url
    click_on "Edit", match: :first

    fill_in "Description", with: @searching.description
    fill_in "Raw", with: @searching.raw
    fill_in "Searchable", with: @searching.searchable_id
    fill_in "Searchable type", with: @searching.searchable_type
    click_on "Update Searching"

    assert_text "Searching was successfully updated"
    click_on "Back"
  end

  test "destroying a Searching" do
    visit searchings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Searching was successfully destroyed"
  end
end
