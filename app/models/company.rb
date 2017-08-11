class Company < ApplicationRecord
  has_many :company_categories
  has_many :categories, through: :company_categories
end
