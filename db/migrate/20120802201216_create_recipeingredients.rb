class CreateRecipeingredients < ActiveRecord::Migration
  def change
    create_table :recipeingredients do |t|
      t.string :quantity
      t.string :measurement_unit
      t.integer :ingredient_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
