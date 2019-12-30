require "application_system_test_case"

class SearchresultsTest < ApplicationSystemTestCase
  setup do
    @searchresult = searchresults(:one)
  end

  test "visiting the index" do
    visit searchresults_url
    assert_selector "h1", text: "Searchresults"
  end

  test "creating a Searchresult" do
    visit searchresults_url
    click_on "New Searchresult"

    fill_in "Query", with: @searchresult.query
    fill_in "Raw", with: @searchresult.raw
    fill_in "Results", with: @searchresult.results
    fill_in "Source", with: @searchresult.source
    click_on "Create Searchresult"

    assert_text "Searchresult was successfully created"
    click_on "Back"
  end

  test "updating a Searchresult" do
    visit searchresults_url
    click_on "Edit", match: :first

    fill_in "Query", with: @searchresult.query
    fill_in "Raw", with: @searchresult.raw
    fill_in "Results", with: @searchresult.results
    fill_in "Source", with: @searchresult.source
    click_on "Update Searchresult"

    assert_text "Searchresult was successfully updated"
    click_on "Back"
  end

  test "destroying a Searchresult" do
    visit searchresults_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Searchresult was successfully destroyed"
  end
end
