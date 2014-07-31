class AddCityToLists < ActiveRecord::Migration
  def change
    add_column :lists, :city, :string
  end
end
