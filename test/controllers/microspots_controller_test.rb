require 'test_helper'

class MicrospotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microspot = microspots(:one)
  end

  test "should get index" do
    get microspots_url
    assert_response :success
  end

  test "should get new" do
    get new_microspot_url
    assert_response :success
  end

  test "should create microspot" do
    assert_difference('Microspot.count') do
      post microspots_url, params: { microspot: { content: @microspot.content, user_id: @microspot.user_id } }
    end

    assert_redirected_to microspot_url(Microspot.last)
  end

  test "should show microspot" do
    get microspot_url(@microspot)
    assert_response :success
  end

  test "should get edit" do
    get edit_microspot_url(@microspot)
    assert_response :success
  end

  test "should update microspot" do
    patch microspot_url(@microspot), params: { microspot: { content: @microspot.content, user_id: @microspot.user_id } }
    assert_redirected_to microspot_url(@microspot)
  end

  test "should destroy microspot" do
    assert_difference('Microspot.count', -1) do
      delete microspot_url(@microspot)
    end

    assert_redirected_to microspots_url
  end
end
