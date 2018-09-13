class CompaniesController < ApplicationController

def new
  @company = Company.new
end

def create
  Company.create(company_params)
end

private

def company_params
  params.require(:company).permit(:name, :street, :city, :state, :zip_code)
end
end