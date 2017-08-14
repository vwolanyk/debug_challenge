class Api::CategoriesController < ApplicationController
  def show
  @company = Company.find(params[:id])
  render json: @company.categories, each_serializer: CompanySerializer
end
