class AddNumberToReportit < ActiveRecord::Migration[7.0]
  def change
    add_column :reportits, :number, :string
  end
end
