class UsersController < ApplicationController
    def index
        @users = User.all
        options = {
          include: [:books, :reviews]
       }
        render json: UserSerilizer.new(@users, options)
    end
    
    def show
        @user = User.find(params[:id])
        render json: @user
    end 

    def create
        @user = User.new(user_params)
        if @user.save?
            render json: @user, status :created
        else
            render json: @user.errors, status: unprocessable_entity
    end 
end 

private
 def user_params
    params.require(:user).permit(:username, :email, :password)
end 


end