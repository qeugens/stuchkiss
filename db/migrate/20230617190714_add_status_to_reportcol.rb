class AddStatusToReportcol < ActiveRecord::Migration[7.0]
  def change
    add_column :reportcols, :status, :string, default: 'new'
  end
end
