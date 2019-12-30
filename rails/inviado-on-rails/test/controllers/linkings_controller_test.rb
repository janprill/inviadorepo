require 'test_helper'

class LinkingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linking = linkings(:one)
  end

  test "should get index" do
    get linkings_url
    assert_response :success
  end

  test "should get new" do
    get new_linking_url
    assert_response :success
  end

  test "should create linking" do
    assert_difference('Linking.count') do
      post linkings_url, params: { linking: { description: @linking.description, linkable_id: @linking.linkable_id, linkable_type: @linking.linkable_type, raw: @linking.raw } }
    end

    assert_redirected_to linking_url(Linking.last)
  end

  test "should show linking" do
    get linking_url(@linking)
    assert_response :success
  end

  test "should get edit" do
    get edit_linking_url(@linking)
    assert_response :success
  end

  test "should update linking" do
    patch linking_url(@linking), params: { linking: { description: @linking.description, linkable_id: @linking.linkable_id, linkable_type: @linking.linkable_type, raw: @linking.raw } }
    assert_redirected_to linking_url(@linking)
  end

  test "should destroy linking" do
    assert_difference('Linking.count', -1) do
      delete linking_url(@linking)
    end

    assert_redirected_to linkings_url
  end
end
