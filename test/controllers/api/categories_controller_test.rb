require 'test_helper'

class Api::CategoriesControllerTest < ActionDispatch::IntegrationTest
  test '#show' do
    category = categories(:one)
    get api_category_path(category), as: :json
    resp_json = JSON.parse(response.body)

    assert_equal resp_json.keys, %w{id name companies}

    resp_json['companies'].each do |cc|
      assert_equal cc.keys, %w{id name description}
    end
  end
end
