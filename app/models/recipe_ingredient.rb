class RecipeIngredient < ActiveRecord::Base
  attr_accessible :measurement_unit, :quantity
  belongs_to :recipe
  belongs_to :ingredient

  accepts_nested_attributes_for :recipe, allow_destroy: true
  accepts_nested_attributes_for :ingredient, allow_destroy: true
end
