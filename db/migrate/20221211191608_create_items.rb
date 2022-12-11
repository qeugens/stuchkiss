class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :geotag
      t.string :note
      t.string :date

      t.timestamps
    end
  end
end
