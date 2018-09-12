class Api::V1::Users::LocationsController < ApplicationController
  
    skip_before_action :verify_authenticity_token
    def create
      user = User.first
      company = Company.first
      user_location = params[:location]
      distance = Distance.new(company, user_location).distance
      if distance < 20
        user_company = user.points(company)
        user_company.points += 1
        user_company.save
      end
      render json: user, status: 200
    end

    private
    def user_params
      params.require(:user).permit(:name, :email, :token)
    end
end