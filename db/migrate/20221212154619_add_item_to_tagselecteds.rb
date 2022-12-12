class AddItemToTagselecteds < ActiveRecord::Migration[7.0]
  def change
    add_reference :tagselecteds, :item, null: false, foreign_key: true
  end
end
