require "test_helper"

class TagselectedsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tagselecteds_index_url
    assert_response :success
  end

  test "should get create" do
    get tagselecteds_create_url
    assert_response :success
  end

  test "should get update" do
    get tagselecteds_update_url
    assert_response :success
  end

  test "should get destroy" do
    get tagselecteds_destroy_url
    assert_response :success
  end
end
