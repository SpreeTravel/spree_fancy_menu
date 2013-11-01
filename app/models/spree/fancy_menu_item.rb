class Spree::FancyMenuItem < ActiveRecord::Base
  belongs_to :taxon, :class_name => 'Spree::Taxon'

  validates :name, :index, :depth, :presence => true
  validates :index, :uniqueness => true
  validates :index, :numericality => { :only_integer => true, 
  	                                   :greater_than_or_equal_to => 0 }
  validates :depth, :numericality => { :only_integer => true, 
  									   :greater_than_or_equal_to => 1, 
  									   :less_than_or_equal_to => 3 }
end
