class AddIsadminToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :isadmin, :boolean
  end
end
