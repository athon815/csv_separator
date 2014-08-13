class DropOldColumns < ActiveRecord::Migration
  def change
  	remove_column :uploads, :first_name
  	remove_column :uploads, :last_name
  	remove_column :uploads,	:email	
  	remove_column :uploads,	:company
  	remove_column :uploads,	:Religious
  	remove_column :uploads,	:title
  	remove_column :uploads,	:street
  	remove_column :uploads,	:city
  	remove_column :uploads,	:state
  	remove_column :uploads,	:zip
  	remove_column :uploads,	:phone
  	remove_column :uploads,	:web_site
  	remove_column :uploads,	:revenue
  	remove_column :uploads,	:employees
  end
end
