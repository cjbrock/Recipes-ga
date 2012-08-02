class Recipe < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :ingredients
  has_many :recipeingredients
end
