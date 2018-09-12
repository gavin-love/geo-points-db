class User < ApplicationRecord
  has_many :user_companies
  has_many :companies, through: :user_companies

  def points(company)
    UserCompany.where(user_id: id, company_id: company.id).first
  end
end