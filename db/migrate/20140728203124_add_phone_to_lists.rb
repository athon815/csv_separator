class AddPhoneToLists < ActiveRecord::Migration
  def change
    add_column :lists, :phone, :string
  end
end
