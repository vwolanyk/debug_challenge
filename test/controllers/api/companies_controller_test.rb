require 'test_helper'

class Api::CompaniesControllerTest < ActionDispatch::IntegrationTest
  test '#index' do
    get api_companies_path
    resp_json = JSON.parse(response.body)
    resp_json.each do |c|
      assert_equal c.keys, %w{id name description}
    end
  end
end
