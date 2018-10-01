class UsersController < ApplicationController
    def login
        @user = User.find_or_create_by(name: params[:name])
        render json: @user
    end 

    def projects
        @user = User.find(params[:id])
        render json: @user.projects
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end
end
