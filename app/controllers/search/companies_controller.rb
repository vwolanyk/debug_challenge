class Search::CompaniesController < ApplicationController

  def index
    @companies = Company.search(params[:q])
  end
end
