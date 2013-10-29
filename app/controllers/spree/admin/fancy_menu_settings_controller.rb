module Spree
  module Admin
    class FancyMenuSettingsController < Spree::Admin::BaseController

      def edit
        @taxonomies = Taxonomy.all
      end
      
      def current
        @testlist = params[:menu]
      end

    end
  end
end

