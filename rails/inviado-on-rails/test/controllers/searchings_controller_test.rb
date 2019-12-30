require 'test_helper'

class SearchingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @searching = searchings(:one)
  end

  test "should get index" do
    get searchings_url
    assert_response :success
  end

  test "should get new" do
    get new_searching_url
    assert_response :success
  end

  test "should create searching" do
    assert_difference('Searching.count') do
      post searchings_url, params: { searching: { description: @searching.description, raw: @searching.raw, searchable_id: @searching.searchable_id, searchable_type: @searching.searchable_type } }
    end

    assert_redirected_to searching_url(Searching.last)
  end

  test "should show searching" do
    get searching_url(@searching)
    assert_response :success
  end

  test "should get edit" do
    get edit_searching_url(@searching)
    assert_response :success
  end

  test "should update searching" do
    patch searching_url(@searching), params: { searching: { description: @searching.description, raw: @searching.raw, searchable_id: @searching.searchable_id, searchable_type: @searching.searchable_type } }
    assert_redirected_to searching_url(@searching)
  end

  test "should destroy searching" do
    assert_difference('Searching.count', -1) do
      delete searching_url(@searching)
    end

    assert_redirected_to searchings_url
  end
end
