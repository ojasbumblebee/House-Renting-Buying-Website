require 'test_helper'

class InterestListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interest_list = interest_lists(:one)
  end

  test "should get index" do
    get interest_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_interest_list_url
    assert_response :success
  end

  test "should create interest_list" do
    assert_difference('InterestList.count') do
      post interest_lists_url, params: { interest_list: {  } }
    end

    assert_redirected_to interest_list_url(InterestList.last)
  end

  test "should show interest_list" do
    get interest_list_url(@interest_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_interest_list_url(@interest_list)
    assert_response :success
  end

  test "should update interest_list" do
    patch interest_list_url(@interest_list), params: { interest_list: {  } }
    assert_redirected_to interest_list_url(@interest_list)
  end

  test "should destroy interest_list" do
    assert_difference('InterestList.count', -1) do
      delete interest_list_url(@interest_list)
    end

    assert_redirected_to interest_lists_url
  end
end
