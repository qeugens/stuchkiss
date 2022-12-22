class AddCoverToCollection < ActiveRecord::Migration[7.0]
  def change
    add_column :collections, :cover, :string
  end
end
