class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]

  def create
    @review = Review.new(review_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail, anchor: "detail")
    else
      @dose = Dose.new
      render 'cocktails/show'
    end
  end

  def edit
  end

  def update
    if @review.update
      redirect_to cocktail_path(@review.cocktail, anchor: "detail")
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to cocktail_path(@review.cocktail, anchor: "detail")
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
