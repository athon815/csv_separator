class AddReligionToLists < ActiveRecord::Migration
  def change
    add_column :lists, :Religious, :boolean
  end
end
