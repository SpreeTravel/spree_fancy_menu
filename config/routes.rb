Spree::Core::Engine.routes.draw do
  namespace :admin do
    resource :fancy_menu_settings
  end
end
