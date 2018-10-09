class InterestList < ApplicationRecord
  has_many :interest_list_items, dependent: :destroy

  def add_listing(listing)
    current_item = interest_list_items.find_by(listing_id: listing.id)
    if current_item
      current_item.increment(:quantity)
    else
      current_item = interest_list_items.build(listing_id: listing.id)
    end
    current_item
  end
end
