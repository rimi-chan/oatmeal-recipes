require "test_helper"

class OatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get oats_index_url
    assert_response :success
  end

  test "should get new" do
    get oats_new_url
    assert_response :success
  end

  test "should get show" do
    get oats_show_url
    assert_response :success
  end

  test "should get search" do
    get oats_search_url
    assert_response :success
  end

  test "should get create" do
    get oats_create_url
    assert_response :success
  end

  test "should get edit" do
    get oats_edit_url
    assert_response :success
  end
end
