class AddEmployeesToLists < ActiveRecord::Migration
  def change
    add_column :lists, :employees, :string
  end
end
