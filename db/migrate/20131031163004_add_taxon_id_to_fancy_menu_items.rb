class AddTaxonIdToFancyMenuItems < ActiveRecord::Migration
  def change
    add_column :fancy_menu_items, :taxon_id, :integer
  end
end
