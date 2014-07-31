class AddZipToLists < ActiveRecord::Migration
  def change
    add_column :lists, :zip, :string
  end
end
