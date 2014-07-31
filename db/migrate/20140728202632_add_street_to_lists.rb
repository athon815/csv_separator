class AddStreetToLists < ActiveRecord::Migration
  def change
    add_column :lists, :street, :string
  end
end
