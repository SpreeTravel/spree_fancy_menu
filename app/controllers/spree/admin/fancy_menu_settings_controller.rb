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

            @errors = { :base => [] }

            begin
              FancyMenuItem.destroy_all
            rescue Exception => e
              @errors[:base] << e.to_s
              raise
            end

            if params[:menu]

              if params[:menu].count > 10
                @errors[:base] << "The count of items on the menu must be less than 10"
                raise
              end

              params[:menu].each do |fancy_item|
                name = fancy_item[:name].chomp.reverse!.chomp.reverse!
                item = Spree::FancyMenuItem.create(:name => name,
                                                 :index => fancy_item[:index],
                                                 :depth => fancy_item[:depth],
                                                 :taxon_id => fancy_item[:id])
                if !item.save
                  @errors[:base] << "There were some errors with the menu items validation"
                  raise
                end
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

