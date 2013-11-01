class RenameTableFancyMenuItems < ActiveRecord::Migration
  def change
  	rename_table :fancy_menu_items, :spree_fancy_menu_items
  end
end
