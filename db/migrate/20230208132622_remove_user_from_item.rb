class RemoveUserFromItem < ActiveRecord::Migration[7.0]
  def change
    remove_reference :items, :user, null: false, foreign_key: true
  end
end
