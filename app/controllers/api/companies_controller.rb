class Api::CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render json: @companies, each_serializer: CompanySerializer
  end
end
