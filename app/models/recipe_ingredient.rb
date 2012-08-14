class RecipeIngredient < ActiveRecord::Base
  attr_accessible :measurement_unit, :quantity, :ingredient, :ingredient_id
  belongs_to :recipe
  belongs_to :ingredient

  accepts_nested_attributes_for :recipe, allow_destroy: true
  accepts_nested_attributes_for :ingredient, allow_destroy: true

  def ingredient=(ingredient)
    self.ingredient_id = Ingredient.find_or_create_by_name(ingredient.capitalize).id
  end
end
