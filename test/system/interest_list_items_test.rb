require "application_system_test_case"

class InterestListItemsTest < ApplicationSystemTestCase
  setup do
    @interest_list_item = interest_list_items(:one)
  end

  test "visiting the index" do
    visit interest_list_items_url
    assert_selector "h1", text: "Interest List Items"
  end

  test "creating a Interest list item" do
    visit interest_list_items_url
    click_on "New Interest List Item"

    fill_in "Interest List", with: @interest_list_item.interest_list_id
    fill_in "Listing", with: @interest_list_item.listing_id
    click_on "Create Interest list item"

    assert_text "Interest list item was successfully created"
    click_on "Back"
  end

  test "updating a Interest list item" do
    visit interest_list_items_url
    click_on "Edit", match: :first

    fill_in "Interest List", with: @interest_list_item.interest_list_id
    fill_in "Listing", with: @interest_list_item.listing_id
    click_on "Update Interest list item"

    assert_text "Interest list item was successfully updated"
    click_on "Back"
  end

  test "destroying a Interest list item" do
    visit interest_list_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Interest list item was successfully destroyed"
  end
end
