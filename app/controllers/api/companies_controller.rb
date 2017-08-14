class Api::CompaniesController < ApplicationController
  def index
    @company = Company.fin
    render json: @companies, each_serializer: CompanySerializer
  end
end
