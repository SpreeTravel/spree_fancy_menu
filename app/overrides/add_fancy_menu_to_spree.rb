Deface::Override.new(:virtual_path => "spree/shared/_header",
                      :name => "add_fancy_menu_to_spree",
                      :insert_bottom => "#header[data-hook]",
                      :partial => "spree/shared/set_fancy_menu")