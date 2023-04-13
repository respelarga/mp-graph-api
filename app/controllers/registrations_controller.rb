class RegistrationsController < ApplicationController
    def new
        @user = User.new
        @return_url = params[:return_url]
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to params[:return_url]
        else    
            render :new, status: 422
        end
    end

    private

    def user_params
        params.require(:user).permit(:key, :password, :password_confirmation)
    end
end