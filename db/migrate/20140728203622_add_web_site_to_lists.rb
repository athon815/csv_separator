class AddWebSiteToLists < ActiveRecord::Migration
  def change
    add_column :lists, :web_site, :string
  end
end
