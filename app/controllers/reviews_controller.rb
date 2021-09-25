class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
        #render json: @reviews
        render json: ReviewSerializer.new(@reviews)
    end 

    def create
        @review = Review.new(review_params)
        if @review.save
            render json: @review, status: :accepted
        else
            render json: {errors: book.errors.full_messages}, status: unprocessable_entity
        end 
    end 

    def show
        @review = Review.find(params[:id])
        render json: @review
    end 

    private

    def review_params
      params.require(:review).permit(:comment, :likes, :book_id, :user_id)
    end
end
