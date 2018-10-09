class CreateInterestLists < ActiveRecord::Migration[5.2]
  def change
    create_table :interest_lists do |t|

      t.timestamps
    end
  end
end
