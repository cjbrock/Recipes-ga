class RecipeIngredient < ActiveRecord::Base
  attr_accessible :measurement_unit, :quantity
  belongs_to :recipe
  belongs_to :ingredient
end
