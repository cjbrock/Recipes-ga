class RecipeIngredientsController < ApplicationController
  # GET /recipeingredients
  # GET /recipeingredients.json
  def index
    @recipe_ingredients = Recipe_ingredient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipe_ingredients }
    end
  end

  # GET /recipeingredients/1
  # GET /recipeingredients/1.json
  def show
    @recipe_ingredient = Recipe_ingredient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipe_ingredient }
    end
  end

  # GET /recipeingredients/new
  # GET /recipeingredients/new.json
  def new
    @recipeingredient = Recipe_ingredient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipe_ingredient }
    end
  end

  # GET /recipeingredients/1/edit
  def edit
    @recipe_ingredient = Recipe_ingredient.find(params[:id])
  end

  # POST /recipeingredients
  # POST /recipeingredients.json
  def create
    @recipe_ingredient = Recipe_ingredient.new(params[:recipe_ingredient])

    respond_to do |format|
      if @recipe_ingredient.save
        format.html { redirect_to @recipe_ingredient, notice: 'Recipe_ingredient was successfully created.' }
        format.json { render json: @recipe_ingredient, status: :created, location: @recipe_ingredient }
      else
        format.html { render action: "new" }
        format.json { render json: @recipe_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipeingredients/1
  # PUT /recipeingredients/1.json
  def update
    @recipe_ingredient = Recipe_ingredient.find(params[:id])

    respond_to do |format|
      if @recipe_ingredient.update_attributes(params[:recipe_ingredient])
        format.html { redirect_to @recipe_ingredient, notice: 'Recipe_ingredient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recipe_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipeingredients/1
  # DELETE /recipeingredients/1.json
  def destroy
    @recipe_ingredient = Recipe_ingredient.find(params[:id])
    @recipe_ingredient.destroy

    respond_to do |format|
      format.html { redirect_to recipe_ingredients_url }
      format.json { head :no_content }
    end
  end
end
