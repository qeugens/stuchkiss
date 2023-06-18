class CreateReportcols < ActiveRecord::Migration[7.0]
  def change
    create_table :reportcols do |t|
      t.string :number
      t.string :reason
      t.string :object
      t.references :user, null: false, foreign_key: true
      t.references :collection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
