module Api::V1
  class CompaniesController < ApplicationController
    def create
      company = Company.create(company_params)
      CoordService.new(company).latlng
    end

    private
    def company_params
      params.require(:company).permit(:name, :street, :city, :state, :zip_code, :industry, :lat, :lng)
    end
  end
end