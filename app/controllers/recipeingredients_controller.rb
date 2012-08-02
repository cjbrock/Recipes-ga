class RecipeingredientsController < ApplicationController
  # GET /recipeingredients
  # GET /recipeingredients.json
  def index
    @recipeingredients = Recipeingredient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipeingredients }
    end
  end

  # GET /recipeingredients/1
  # GET /recipeingredients/1.json
  def show
    @recipeingredient = Recipeingredient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipeingredient }
    end
  end

  # GET /recipeingredients/new
  # GET /recipeingredients/new.json
  def new
    @recipeingredient = Recipeingredient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipeingredient }
    end
  end

  # GET /recipeingredients/1/edit
  def edit
    @recipeingredient = Recipeingredient.find(params[:id])
  end

  # POST /recipeingredients
  # POST /recipeingredients.json
  def create
    @recipeingredient = Recipeingredient.new(params[:recipeingredient])

    respond_to do |format|
      if @recipeingredient.save
        format.html { redirect_to @recipeingredient, notice: 'Recipeingredient was successfully created.' }
        format.json { render json: @recipeingredient, status: :created, location: @recipeingredient }
      else
        format.html { render action: "new" }
        format.json { render json: @recipeingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipeingredients/1
  # PUT /recipeingredients/1.json
  def update
    @recipeingredient = Recipeingredient.find(params[:id])

    respond_to do |format|
      if @recipeingredient.update_attributes(params[:recipeingredient])
        format.html { redirect_to @recipeingredient, notice: 'Recipeingredient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recipeingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipeingredients/1
  # DELETE /recipeingredients/1.json
  def destroy
    @recipeingredient = Recipeingredient.find(params[:id])
    @recipeingredient.destroy

    respond_to do |format|
      format.html { redirect_to recipeingredients_url }
      format.json { head :no_content }
    end
  end
end
