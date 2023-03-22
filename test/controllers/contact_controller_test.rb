require "test_helper"

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get number" do
    get contact_number_url
    assert_response :success
  end

  test "should get address" do
    get contact_address_url
    assert_response :success
  end
end
