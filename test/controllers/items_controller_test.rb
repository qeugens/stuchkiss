require "test_helper"

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get items_index_url
    assert_response :success
  end

  test "should get create" do
    get items_create_url
    assert_response :success
  end

  test "should get update" do
    get items_update_url
    assert_response :success
  end

  test "should get destroy" do
    get items_destroy_url
    assert_response :success
  end
end
