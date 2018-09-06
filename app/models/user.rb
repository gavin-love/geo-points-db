class User < ApplicationRecord
  has_many :user_companies
  has_many :companies, through: :user_companies
end