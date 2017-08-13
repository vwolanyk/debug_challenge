class Api::Search::CategoriesController < ApplicationController

  def index
    elastic_search_response = ES::Categories.search(
      query: params[:q],
      page: params[:page],
      latitude: params[:location][:lat],
      longitude: params[:location][:lon]
    )
    @categories = elastic_search_response[:companies]
    render json: @categories
  end
end
