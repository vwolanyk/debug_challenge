class Company < ApplicationRecord
  has_many :company_categories
  has_many :categories, through: :company_categories
  has_many :invoices

  def self.search(search = nil)
    if search
      # SECURITY WEAKNESS was the like statement not being separated out
      self.where("name LIKE ?", "%#{search}%")
    else
      self.all
    end
  end
end
