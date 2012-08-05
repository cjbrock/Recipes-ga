class Ingredient < ActiveRecord::Base
  attr_accessible :name

  has_many :recipes
  #has_many :recipeingredients - needs to be a has manythrough

  validates_uniqueness_of :name, :case_sensitive => false

end
