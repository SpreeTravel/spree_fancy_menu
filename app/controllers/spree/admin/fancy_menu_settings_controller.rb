module Spree
  module Admin
    class FancyMenuSettingsController < Spree::Admin::BaseController

      def edit
        @taxonomies = Spree::Taxonomy.all
        @menu_items = Spree::FancyMenuItem.includes(:taxon).all
      end
      
      def save
        begin
          FancyMenuItem.transaction do

            FancyMenuItem.destroy_all

            params[:menu].each do |fancy_item|
              name = fancy_item[:name].chomp.reverse!.chomp.reverse!
              item = Spree::FancyMenuItem.create(:name => name,
                                                 :index => fancy_item[:index],
                                                 :depth => fancy_item[:depth],
                                                 :taxon_id => fancy_item[:id])
              if !item.save
                @errors = item.errors
                raise
              end
            end

            redirect_to "/"
          end
        rescue
          @taxonomies = Spree::Taxonomy.all
          @menu_items = Spree::FancyMenuItem.includes(:taxon).all
          render :edit
        end
      end

    end
  end
end

