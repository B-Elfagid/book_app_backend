class BooksController < ApplicationController

    def index
        @books = Book.all
        #render json: @books
        render json: BookSerializer.new(@books)
    end 

    def create
        @book = Book.new(book_params)
        if @book.save?
            render json: @book, status: :accepted
        else
            render json: {errors: book.errors.full_messages}, status: unprocessable_entity
        end 
    end 

    def show
        @book = Book.find(params[:id])
        render json: @book
    end
    
    def delete
        @book = Book.find(params[:id])
        @book.destroy
    end 

    private

    def book_params
      params.require(:book).permit(:image, :title, :author, :description, :user_id, :category_id)
    end

end
