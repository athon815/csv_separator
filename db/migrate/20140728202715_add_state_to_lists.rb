class AddStateToLists < ActiveRecord::Migration
  def change
    add_column :lists, :state, :string
  end
end
