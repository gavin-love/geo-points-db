module Api::V1
  class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create

      user = User.create(user_params)
      render json: user, status: 200
    end

    private
    def user_params
      params.require(:user).permit(:name, :email, :token)
    end
  end
end