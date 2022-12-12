class CreateTagselecteds < ActiveRecord::Migration[7.0]
  def change
    create_table :tagselecteds do |t|

      t.timestamps
    end
  end
end
