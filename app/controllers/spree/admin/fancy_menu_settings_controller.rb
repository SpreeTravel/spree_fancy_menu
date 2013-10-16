module Spree
  module Admin
    class FancyMenuSettingsController < Spree::Admin::BaseController
      
      respond_to :html

      def edit
        @taxonomies = Taxonomy.all
      end

    end
  end
end

