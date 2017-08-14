class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :invoices

end
