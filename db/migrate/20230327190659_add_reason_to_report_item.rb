class AddReasonToReportItem < ActiveRecord::Migration[7.0]
  def change
    add_column :report_items, :reason, :string
  end
end
