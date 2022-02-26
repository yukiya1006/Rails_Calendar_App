require "test_helper"

class TrainigsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trainigs_index_url
    assert_response :success
  end

  test "should get destroy" do
    get trainigs_destroy_url
    assert_response :success
  end
end
