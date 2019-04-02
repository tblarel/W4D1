class UsersController < ApplicationController

    def index
        @users = User.all 

        render json: @users, status: 200
    end

    def create
        user = User.new(user_params)
        if user.save

            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        @user = User.find_by(id: params[:id])

        render json: @user 
    end

    def update
        @user = User.find_by(id: params[:id])
        @user.update(user_params) 

        render json: @user , status: 200
    end

    def destroy
       User.find(params[:id]).destroy
       render json: "User deleted", status:200
    end

    private
    
    def user_params
      params.require(:user).permit(:username) 
    end
end
