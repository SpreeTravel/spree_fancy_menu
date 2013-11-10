Spree::BaseHelper.module_eval do

	def fancy_menu?()
		Spree::FancyMenuItem.count > 0
	end

	def set_fancy_menu(options = {})
		items = []
		Spree::FancyMenuItem.all.each do |fi|
			items << Spree::Taxon.find(fi.taxon_id)
		end
		items
	end

	def set_fancy_breadcrumbs(taxon_id, options = {})
		Spree::Taxon.find(taxon_id).ancestors
	end

  def fancy_item_link(taxon, taxon_selected)
  	css_class = "item-menu-link" 
  	if taxon_selected && taxon.name == taxon_selected.name
  		css_class << " fancy-item-active" 
  	end
  	link_to content_tag(:span, taxon.name, :class => "item-menu-text"), set_fancy_item_link(taxon.permalink), :class => css_class
  end

  def fancy_item_dropdown_link(taxon)
  	css_class = "item-menu-dropdown-link"
  	link_to content_tag(:span, taxon.name, :class => "item-menu-dropdown-text"), set_fancy_item_link(taxon.permalink), :class => css_class
  end

  def set_fancy_item_link(permalink)
  	"/t/" << permalink
  end

  def set_class_dropdown_container(depth)
  	depth == 1 ? "fancy-container-dropdown-surface" : "fancy-container-dropdown-deeper"
  end

end