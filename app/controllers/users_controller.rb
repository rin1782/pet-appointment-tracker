class UsersController < ApplicationController
    def welcome
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to new_pet_path(@user)
        else
            @error = @user.errors.full_messages
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
        redirect_to '/signup' if !@user
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
