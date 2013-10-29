class FancyMenuItem < ActiveRecord::Base
  belongs_to :taxon

  validates :name, :index, :depth, :presence => true
  validates :name, :index, :uniqueness => true
  validates :index, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1 }
  validates :depth, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 3 }
end
