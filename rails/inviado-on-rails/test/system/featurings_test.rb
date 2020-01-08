require "application_system_test_case"

class FeaturingsTest < ApplicationSystemTestCase
  setup do
    @featuring = featurings(:one)
  end

  test "visiting the index" do
    visit featurings_url
    assert_selector "h1", text: "Featurings"
  end

  test "creating a Featuring" do
    visit featurings_url
    click_on "New Featuring"

    fill_in "Description", with: @featuring.description
    fill_in "Featurable", with: @featuring.featurable_id
    fill_in "Featurable type", with: @featuring.featurable_type
    fill_in "Raw", with: @featuring.raw
    click_on "Create Featuring"

    assert_text "Featuring was successfully created"
    click_on "Back"
  end

  test "updating a Featuring" do
    visit featurings_url
    click_on "Edit", match: :first

    fill_in "Description", with: @featuring.description
    fill_in "Featurable", with: @featuring.featurable_id
    fill_in "Featurable type", with: @featuring.featurable_type
    fill_in "Raw", with: @featuring.raw
    click_on "Update Featuring"

    assert_text "Featuring was successfully updated"
    click_on "Back"
  end

  test "destroying a Featuring" do
    visit featurings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Featuring was successfully destroyed"
  end
end
