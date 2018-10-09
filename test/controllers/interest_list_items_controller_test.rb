require 'test_helper'

class InterestListItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interest_list_item = interest_list_items(:one)
  end

  test "should get index" do
    get interest_list_items_url
    assert_response :success
  end

  test "should get new" do
    get new_interest_list_item_url
    assert_response :success
  end

  test "should create interest_list_item" do
    assert_difference('InterestListItem.count') do
      post interest_list_items_url, params: { interest_list_item: { interest_list_id: @interest_list_item.interest_list_id, listing_id: @interest_list_item.listing_id } }
    end

    assert_redirected_to interest_list_item_url(InterestListItem.last)
  end

  test "should show interest_list_item" do
    get interest_list_item_url(@interest_list_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_interest_list_item_url(@interest_list_item)
    assert_response :success
  end

  test "should update interest_list_item" do
    patch interest_list_item_url(@interest_list_item), params: { interest_list_item: { interest_list_id: @interest_list_item.interest_list_id, listing_id: @interest_list_item.listing_id } }
    assert_redirected_to interest_list_item_url(@interest_list_item)
  end

  test "should destroy interest_list_item" do
    assert_difference('InterestListItem.count', -1) do
      delete interest_list_item_url(@interest_list_item)
    end

    assert_redirected_to interest_list_items_url
  end
end
