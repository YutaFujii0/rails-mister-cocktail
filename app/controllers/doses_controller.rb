class DosesController < ApplicationController
  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail, anchor: "detail")
    else
      @review = Review.new
      render 'cocktails/show'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail, anchor: "detail")
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :base)
  end
end
