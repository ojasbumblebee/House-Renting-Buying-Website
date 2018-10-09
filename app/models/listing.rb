class Listing < ApplicationRecord
  before_destroy :not_referenced_by_any_interest_list_item
  belongs_to :user
  belongs_to :company, {:optional => true }
  has_many :enquiries
  has_many :interest_list_items


  private

  def not_referenced_by_any_interest_list_item
    unless interest_list_items.empty?
      errors.add(:base, "Interest List Items present")
      throw :abort
    end
  end
end
