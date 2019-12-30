require 'test_helper'

class SearchresultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @searchresult = searchresults(:one)
  end

  test "should get index" do
    get searchresults_url
    assert_response :success
  end

  test "should get new" do
    get new_searchresult_url
    assert_response :success
  end

  test "should create searchresult" do
    assert_difference('Searchresult.count') do
      post searchresults_url, params: { searchresult: { query: @searchresult.query, raw: @searchresult.raw, results: @searchresult.results, source: @searchresult.source } }
    end

    assert_redirected_to searchresult_url(Searchresult.last)
  end

  test "should show searchresult" do
    get searchresult_url(@searchresult)
    assert_response :success
  end

  test "should get edit" do
    get edit_searchresult_url(@searchresult)
    assert_response :success
  end

  test "should update searchresult" do
    patch searchresult_url(@searchresult), params: { searchresult: { query: @searchresult.query, raw: @searchresult.raw, results: @searchresult.results, source: @searchresult.source } }
    assert_redirected_to searchresult_url(@searchresult)
  end

  test "should destroy searchresult" do
    assert_difference('Searchresult.count', -1) do
      delete searchresult_url(@searchresult)
    end

    assert_redirected_to searchresults_url
  end
end
