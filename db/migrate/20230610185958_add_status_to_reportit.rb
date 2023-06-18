class AddStatusToReportit < ActiveRecord::Migration[7.0]
  def change
    add_column :reportits, :status, :string, default: 'new'
  end
end
