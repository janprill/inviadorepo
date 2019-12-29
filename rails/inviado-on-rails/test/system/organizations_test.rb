require "application_system_test_case"

class OrganizationsTest < ApplicationSystemTestCase
  setup do
    @organization = organizations(:one)
  end

  test "visiting the index" do
    visit organizations_url
    assert_selector "h1", text: "Organizations"
  end

  test "creating a Organization" do
    visit organizations_url
    click_on "New Organization"

    fill_in "Corporate form", with: @organization.corporate_form_id
    fill_in "Description", with: @organization.description
    fill_in "Is active", with: @organization.is_active
    fill_in "Name", with: @organization.name
    fill_in "Raw", with: @organization.raw
    fill_in "Type", with: @organization.type
    click_on "Create Organization"

    assert_text "Organization was successfully created"
    click_on "Back"
  end

  test "updating a Organization" do
    visit organizations_url
    click_on "Edit", match: :first

    fill_in "Corporate form", with: @organization.corporate_form_id
    fill_in "Description", with: @organization.description
    fill_in "Is active", with: @organization.is_active
    fill_in "Name", with: @organization.name
    fill_in "Raw", with: @organization.raw
    fill_in "Type", with: @organization.type
    click_on "Update Organization"

    assert_text "Organization was successfully updated"
    click_on "Back"
  end

  test "destroying a Organization" do
    visit organizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organization was successfully destroyed"
  end
end
