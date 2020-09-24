require 'test_helper'

class DestinationControllerTest < ActionDispatch::IntegrationTest
  test "should get inedx" do
    get destination_inedx_url
    assert_response :success
  end

  test "should get show" do
    get destination_show_url
    assert_response :success
  end

end
