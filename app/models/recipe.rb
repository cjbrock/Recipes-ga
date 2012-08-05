class Recipe < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
 end
