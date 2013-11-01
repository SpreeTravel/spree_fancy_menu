module Spree
	module Admin
		module FancyMenuSettingsHelper
			
			def have_children(taxon_id)
				taxon = Taxon.find(taxon_id)
				return taxon.children.count != 0
			end

			def get_children(taxon_id)
				taxon = Taxon.find(taxon_id)
				return taxon.children
			end
			
			def get_taxon_depth(taxon_id)
				return 5
			end

			def on_menu(menu, taxon)
				menu.each do |item|
					if item.taxon.id == taxon.id
						return true
					end
				end
				return false
			end

			def root(taxonomy_id)
		  	return Taxon.find_by_taxonomy_id(taxonomy_id)
		  end

		end
	end
end
