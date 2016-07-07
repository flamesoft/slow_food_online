require 'rails_helper'

RSpec.describe 'Category Data', type: :request do

  describe 'GET /api/v1/category_data' do
    let!(:cat) { FactoryGirl.create(:restaurant_category, title: 'Thai') }
    let!(:cat2) { FactoryGirl.create(:restaurant_category, title: 'Italian') }

    it 'gets 2 categories' do
      get '/api/v1/category_data'
      expect(response_json['entries'].count).to eq 2
    end
  end
end
