class Ingredient < ActiveRecord::Base
  attr_accessible :name

  has_many :recipes

  validates_uniqueness_of :name, :case_sensitive => false

end
