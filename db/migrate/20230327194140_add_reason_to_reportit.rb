class AddReasonToReportit < ActiveRecord::Migration[7.0]
  def change
    add_column :reportits, :reason, :string
  end
end
