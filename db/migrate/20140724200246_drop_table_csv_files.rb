class DropTableCsvFiles < ActiveRecord::Migration
  def change
  	drop_table :csv_files
  end
end
