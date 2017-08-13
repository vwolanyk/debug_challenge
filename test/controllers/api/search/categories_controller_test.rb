require 'test_helper'

class Api::Search::CategoriesControllerTest < ActionDispatch::IntegrationTest
  test '#index' do
    get api_search_categories_path,
        params: {
          q: 'demo',
          location: {
            lat: 43.6570304,
            lon: -79.6017239
          }
        }
    resp_json = JSON.parse(response.body)
    assert_equal 2, resp_json.length
  end
end
