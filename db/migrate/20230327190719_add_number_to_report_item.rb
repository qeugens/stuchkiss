class AddNumberToReportItem < ActiveRecord::Migration[7.0]
  def change
    add_column :report_items, :number, :string
  end
end
