class Recipe < ActiveRecord::Base
  attr_accessible :description, :name, :recipe_ingredients_attributes

  
  has_many :recipe_ingredients
  has_many :ingredients, :through => :recipe_ingredients

  accepts_nested_attributes_for :recipe_ingredients, allow_destroy: true
  accepts_nested_attributes_for :ingredients, allow_destroy: true

end
