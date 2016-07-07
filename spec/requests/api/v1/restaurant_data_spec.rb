require 'rails_helper'

RSpec.describe 'Restaurant Data', type: :request do

  describe 'GET /api/v1/restaurant_data' do

    let!(:cat) { RestaurantCategory.create(title: 'Thai') }
    let!(:restaurant) { Restaurant.create(name: 'Thai 1', restaurant_category: cat) }
    let!(:restaurant2) { Restaurant.create(name: 'Thai 2', restaurant_category: cat) }

    it 'gets 2 restaurants' do
      get '/api/v1/restaurant_data', cat: 'Thai'
      expect(response_json['entries'].count).to eq 2
    end
  end
end
