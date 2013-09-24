module Spree
  module Admin
    class FancyMenuSettingsController < Spree::Admin::BaseController
      
      respond_to :html

      def edit
	set_columns
	#@list_taxonomies = Array.new(Taxonomy.count, TaxonomyVM.new)	
      end

      private
	
	def set_columns
	  count = 0
          taxonomies = Taxonomy.all
	  @column_left = Array.new
	  @column_center = Array.new
	  @column_right = Array.new
	  taxonomies.each do |t|
	    case count
	      when 0 then @column_left << [t.name, get_max_depth(t)]
	      when 1 then @column_center << [t.name, get_max_depth(t)]
	      when 2 then @column_right << [t.name, get_max_depth(t)]
	    end
	    count = count == 2 ? 0 : count + 1
	  end
	end

	def get_max_depth(taxonomy)
	  1
	end

    end
  end
end

