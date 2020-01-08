require 'test_helper'

class FeaturingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @featuring = featurings(:one)
  end

  test "should get index" do
    get featurings_url
    assert_response :success
  end

  test "should get new" do
    get new_featuring_url
    assert_response :success
  end

  test "should create featuring" do
    assert_difference('Featuring.count') do
      post featurings_url, params: { featuring: { description: @featuring.description, featurable_id: @featuring.featurable_id, featurable_type: @featuring.featurable_type, raw: @featuring.raw } }
    end

    assert_redirected_to featuring_url(Featuring.last)
  end

  test "should show featuring" do
    get featuring_url(@featuring)
    assert_response :success
  end

  test "should get edit" do
    get edit_featuring_url(@featuring)
    assert_response :success
  end

  test "should update featuring" do
    patch featuring_url(@featuring), params: { featuring: { description: @featuring.description, featurable_id: @featuring.featurable_id, featurable_type: @featuring.featurable_type, raw: @featuring.raw } }
    assert_redirected_to featuring_url(@featuring)
  end

  test "should destroy featuring" do
    assert_difference('Featuring.count', -1) do
      delete featuring_url(@featuring)
    end

    assert_redirected_to featurings_url
  end
end
