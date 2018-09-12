module Api::V1
  class CompaniesController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
      binding.pry
      # company = Company.create(company_params)
      binding.pry
      company = Company.first
      # CoordService.new(company).latlng
      YelpService.new(company).info
    end

    private
    def company_params
      params.require(:company).permit(:name, :street, :city, :state, :zip_code, :industry, :lat, :lng)
    end
  end
end