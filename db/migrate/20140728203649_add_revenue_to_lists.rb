class AddRevenueToLists < ActiveRecord::Migration
  def change
    add_column :lists, :revenue, :string
  end
end
