class AddLastNameToLists < ActiveRecord::Migration
  def change
    add_column :lists, :last_name, :string
  end
end
