class CategoriesController < ApplicationController
    def index
        @categories = Category.all
        options = {
          include: [:books]
       }
        render json: CategorySerilizer.new(@categories, options)
    end
    
    def show
        @category = Category.find(params[:id])
        render json: @category
    end 

    def create
        @category = Category.new(category_params)
        if @category.save?
            render json: @category, status :created
        else
            render json: @category.errors, status: unprocessable_entity
      end 
    end

    private

    def category_params
       params.require(:category).permit(:name)
   end 


end 
