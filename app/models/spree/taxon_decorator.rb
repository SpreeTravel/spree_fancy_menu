Spree::Taxon.class_eval do
  has_one :fancy_menu_item, :dependent => :destroy
end