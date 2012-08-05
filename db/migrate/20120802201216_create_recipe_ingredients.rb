class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.string :quantity
      t.string :measurement_unit
      t.integer :ingredient_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
