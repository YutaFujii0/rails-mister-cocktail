class DosesController < ApplicationController
  def create
    # raise
    @dose = Dose.new(dose_params)
    cocktail = Cocktail.find(params[:cocktail_id])
    # ingredient = Ingredient.find_by(name: params[:dose][:ingredient_id])
    @dose.cocktail = cocktail
    # @dose.ingredient = ingredient
    if @dose.save
      redirect_to cocktail_path(cocktail)
    else
      render cocktail_path(cocktail)
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
