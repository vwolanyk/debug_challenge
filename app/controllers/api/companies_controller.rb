class Api::CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render json: @companies, each_serializer: CompanySerializer
  end

  def search
    @companies = Company.search(params[:q])
    render json: @companies, each_serializer: CompanySerializer
  end

  def show
    @company = Company.find(params[:id])
    render json: @company, each_serializer: CategorySerializer
  end
end
