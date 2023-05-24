class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@review.restaurant), status: :see_other
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end



# reviews_new GET    /reviews/new(.:format)                            reviews#new
#             new_restaurant_review GET    /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
#                       restaurants GET    /restaurants(.:format)                            restaurants#index
#                                   POST   /restaurants(.:format)                            restaurants#create
#                    new_restaurant GET    /restaurants/new(.:format)                        restaurants#new
#                   edit_restaurant GET    /restaurants/:id/edit(.:format)                   restaurants#edit
#                        restaurant GET    /restaurants/:id(.:format)                        restaurants#show
#                                   PATCH  /restaurants/:id(.:format)                        restaurants#update
#                                   PUT    /restaurants/:id(.:format)                        restaurants#update
#                                   DELETE /restaurants/:id(.:format)                        restaurants#destroy
