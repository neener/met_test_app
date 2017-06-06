require 'test_helper'

class ArtObjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @art_object = art_objects(:one)
  end

  test "should get index" do
    get art_objects_url
    assert_response :success
  end

  test "should get new" do
    get new_art_object_url
    assert_response :success
  end

  test "should create art_object" do
    assert_difference('ArtObject.count') do
      post art_objects_url, params: { art_object: { department: @art_object.department, title: @art_object.title } }
    end

    assert_redirected_to art_object_url(ArtObject.last)
  end

  test "should show art_object" do
    get art_object_url(@art_object)
    assert_response :success
  end

  test "should get edit" do
    get edit_art_object_url(@art_object)
    assert_response :success
  end

  test "should update art_object" do
    patch art_object_url(@art_object), params: { art_object: { department: @art_object.department, title: @art_object.title } }
    assert_redirected_to art_object_url(@art_object)
  end

  test "should destroy art_object" do
    assert_difference('ArtObject.count', -1) do
      delete art_object_url(@art_object)
    end

    assert_redirected_to art_objects_url
  end
end
