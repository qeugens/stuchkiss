class AddCollectionToItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :collection, null: false, foreign_key: true
  end
end
