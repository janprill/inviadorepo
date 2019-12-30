require 'test_helper'

class TaggingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tagging = taggings(:one)
  end

  test "should get index" do
    get taggings_url
    assert_response :success
  end

  test "should get new" do
    get new_tagging_url
    assert_response :success
  end

  test "should create tagging" do
    assert_difference('Tagging.count') do
      post taggings_url, params: { tagging: { description: @tagging.description, raw: @tagging.raw, taggable_id: @tagging.taggable_id, taggable_type: @tagging.taggable_type } }
    end

    assert_redirected_to tagging_url(Tagging.last)
  end

  test "should show tagging" do
    get tagging_url(@tagging)
    assert_response :success
  end

  test "should get edit" do
    get edit_tagging_url(@tagging)
    assert_response :success
  end

  test "should update tagging" do
    patch tagging_url(@tagging), params: { tagging: { description: @tagging.description, raw: @tagging.raw, taggable_id: @tagging.taggable_id, taggable_type: @tagging.taggable_type } }
    assert_redirected_to tagging_url(@tagging)
  end

  test "should destroy tagging" do
    assert_difference('Tagging.count', -1) do
      delete tagging_url(@tagging)
    end

    assert_redirected_to taggings_url
  end
end
