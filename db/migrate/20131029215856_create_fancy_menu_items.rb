class CreateFancyMenuItems < ActiveRecord::Migration
  def change
    create_table :fancy_menu_items do |t|
      t.string :name
      t.integer :index
      t.integer :depth

      t.timestamps
    end
  end
end
