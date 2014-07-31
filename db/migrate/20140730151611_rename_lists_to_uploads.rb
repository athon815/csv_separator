class RenameListsToUploads < ActiveRecord::Migration
  def change
  	rename_table :lists, :uploads
  end
end
