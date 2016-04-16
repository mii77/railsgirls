class RenameDate < ActiveRecord::Migration
  def change
    rename_column :entries, :ate, :date
  end
end
