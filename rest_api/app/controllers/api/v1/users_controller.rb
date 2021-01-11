module Api
  module V1
    class UsersController < ApplicationController
      def index
        users = User.order(created_at: :desc)
        render json: users
      end

      def show
        user = User.find(params[:id])
        render json: user
      end

      def create
        user = User.new(user_params)
        if user.save
          render json: user
        else
          render json: user.errors
        end
      end

      def destroy
        user = User.find(params[:id])
        render json: user
      end

      def update
        user = User.find(params[:id])
        if user.update(user_params)
          render json: user
        else
          render json: user.errors
        end
      end

      private

      def user_params
        params.require(:user).permit(:name)
      end
    end
  end
end
