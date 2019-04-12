require 'test_helper'

class EventVenueControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get event_venue_index_url
    assert_response :success
  end

  test "should get create" do
    get event_venue_create_url
    assert_response :success
  end

  test "should get destroy" do
    get event_venue_destroy_url
    assert_response :success
  end

  test "should get update" do
    get event_venue_update_url
    assert_response :success
  end

end
