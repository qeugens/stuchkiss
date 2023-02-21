class RemoveUserFromTag < ActiveRecord::Migration[7.0]
  def change
    remove_reference :tags, :user, null: false, foreign_key: true
  end
end
