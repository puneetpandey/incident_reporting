require 'test_helper'

class IncidentDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get incident_detail_new_url
    assert_response :success
  end

  test "should get create" do
    get incident_detail_create_url
    assert_response :success
  end

  test "should get edit" do
    get incident_detail_edit_url
    assert_response :success
  end

  test "should get update" do
    get incident_detail_update_url
    assert_response :success
  end

end
