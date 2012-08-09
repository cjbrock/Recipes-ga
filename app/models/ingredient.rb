class Ingredient < ActiveRecord::Base
  attr_accessible :name

  has_many :recipe_ingredients
  has_many :recipes, :through => :recipe_ingredients

  validates_uniqueness_of :name, :case_sensitive => false

  accepts_nested_attributes_for :recipe_ingredients, allow_destroy: true
  accepts_nested_attributes_for :recipes, allow_destroy: true

end
