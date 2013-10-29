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

		end
	end
end
