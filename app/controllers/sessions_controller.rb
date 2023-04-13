class SessionsController < ApplicationController
    def new
        @user = User.new
        @return_url = params[:return_url]
    end

    def create
        @user = User.find_by(key: params[:key])

        if @user.present? && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to params[:return_url]
        else
            render :new, status: 422
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path 
    end


end