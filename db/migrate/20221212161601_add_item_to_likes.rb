class AddItemToLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :item, null: false, foreign_key: true
  end
end
