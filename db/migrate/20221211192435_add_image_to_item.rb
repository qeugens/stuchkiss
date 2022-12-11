class AddImageToItem < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :image, :string
  end
end
