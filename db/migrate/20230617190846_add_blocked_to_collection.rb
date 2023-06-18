class AddBlockedToCollection < ActiveRecord::Migration[7.0]
  def change
    add_column :collections, :blocked, :boolean, default: 'false'
  end
end
