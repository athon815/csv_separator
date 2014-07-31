class AddFirstNameToLists < ActiveRecord::Migration
  def change
    add_column :lists, :first_name, :string
  end
end
