Spree Enhanced Menu
==============
Spree Enhanced Menu, is an extension for spree e-commerce platform. It provides spree's frontend with a navigation menu with expanding levels, showing the hierarchy of taxonomies. Provides a friendly and simple way to navigate through the store by using the taxons hierarchy.

###Important Note
The Spree Enhanced Menu project is a work in progress, and will suffer major changes. Please use it and keep a live feedback with the team by opening a [GitHub issue](https://github.com/openjaf/spree_fancy_menu/issues/new).

Requirements
------------
### Rails and Spree
Spree Enhanced Menu now requires Rails version **>= 4.0** and a Spree version **>=2.1**.

Installation
------------

Spree Enhanced Menu is not yet distributed as a gem, so it should be used in your app with a git reference or you can download the source and build the gem on your own.

1. Add the following to your Gemfile

  ```ruby
    gem 'spree_fancy_menu’, :git => 'https://github.com/openjaf/spree_fancy_menu.git', :branch => 'master'
  ```

2. Run `bundle install`

3. To copy and apply migrations run:

  ```
  rails g spree_fancy_menu:install
  ```

Features
------------

- Adds a navigation menu on the store front.
- Allows to associate items on the navigation menu with the taxons.
- Adds an interactive configuration view on the backend with items to dinamically select wich items, and in wich order, will be shown on the menu.


How to use it
------------

After installing the extensions go to **admin/configuration** and from the navigation bar on the right select the item for the fancy menu configuration. Adjust the settings for your menu items, from the tree view displayed, the menu will be shown on the top view of the store front.

![Banner on Store](/readme_images/menu_view.jpg?raw=true "Banner on Store")


Contributing
------------

If you'd like to contribute a feature or bugfix: Thanks! To make sure your
fix/feature has a high chance of being included, please read the following
guidelines:

1. Post a [pull request](https://github.com/openjaf/spree_fancy_menu/compare/).
2. Or open a [GitHub issue](https://github.com/openjaf/spree_fancy_menu/issues/new).

License
-------

Spree Enhanced Menu is Copyright © 2014 openjaf. It is free software, and may be
redistributed under the terms specified in the MIT-LICENSE file.
