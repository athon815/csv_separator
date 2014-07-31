class AddCompanyToLists < ActiveRecord::Migration
  def change
    add_column :lists, :company, :string
  end
end
