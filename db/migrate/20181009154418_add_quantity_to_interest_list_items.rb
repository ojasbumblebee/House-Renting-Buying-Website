class AddQuantityToInterestListItems < ActiveRecord::Migration[5.2]
  def change
    add_column :interest_list_items, :quantity, :integer, default: 1
  end
end
