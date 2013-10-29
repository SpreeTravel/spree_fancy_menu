Module Spree
  Module FancyMenuSettingsHelper
    def get_childrens(parent_id)
      @taxons = Taxon.find(parent_id).children
    end  
  end
end
