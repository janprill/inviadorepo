require "application_system_test_case"

class LinksTest < ApplicationSystemTestCase
  setup do
    @link = links(:one)
  end

  test "visiting the index" do
    visit links_url
    assert_selector "h1", text: "Links"
  end

  test "creating a Link" do
    visit links_url
    click_on "New Link"

    fill_in "Description", with: @link.description
    fill_in "Raw", with: @link.raw
    fill_in "Source", with: @link.source
    fill_in "Target", with: @link.target
    fill_in "Title", with: @link.title
    fill_in "Uri", with: @link.uri
    click_on "Create Link"

    assert_text "Link was successfully created"
    click_on "Back"
  end

  test "updating a Link" do
    visit links_url
    click_on "Edit", match: :first

    fill_in "Description", with: @link.description
    fill_in "Raw", with: @link.raw
    fill_in "Source", with: @link.source
    fill_in "Target", with: @link.target
    fill_in "Title", with: @link.title
    fill_in "Uri", with: @link.uri
    click_on "Update Link"

    assert_text "Link was successfully updated"
    click_on "Back"
  end

  test "destroying a Link" do
    visit links_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Link was successfully destroyed"
  end
end
