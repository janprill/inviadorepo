require "application_system_test_case"

class CommentingsTest < ApplicationSystemTestCase
  setup do
    @commenting = commentings(:one)
  end

  test "visiting the index" do
    visit commentings_url
    assert_selector "h1", text: "Commentings"
  end

  test "creating a Commenting" do
    visit commentings_url
    click_on "New Commenting"

    fill_in "Commentable", with: @commenting.commentable_id
    fill_in "Commentable type", with: @commenting.commentable_type
    fill_in "Description", with: @commenting.description
    fill_in "Raw", with: @commenting.raw
    click_on "Create Commenting"

    assert_text "Commenting was successfully created"
    click_on "Back"
  end

  test "updating a Commenting" do
    visit commentings_url
    click_on "Edit", match: :first

    fill_in "Commentable", with: @commenting.commentable_id
    fill_in "Commentable type", with: @commenting.commentable_type
    fill_in "Description", with: @commenting.description
    fill_in "Raw", with: @commenting.raw
    click_on "Update Commenting"

    assert_text "Commenting was successfully updated"
    click_on "Back"
  end

  test "destroying a Commenting" do
    visit commentings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Commenting was successfully destroyed"
  end
end
