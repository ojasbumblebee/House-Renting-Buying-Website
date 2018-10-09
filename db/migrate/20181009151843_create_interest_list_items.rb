class CreateInterestListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :interest_list_items do |t|
      t.references :listing, foreign_key: true
      t.belongs_to :interest_list, foreign_key: true

      t.timestamps
    end
  end
end
