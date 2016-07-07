require 'rails_helper'

describe 'Restaurant Data' do
  let(:headers) { {HTTP_ACCEPT: 'application/json'} }

  describe 'GET /api/v1/restaurant_data' do
    it 'gets three restaurants' do
      get '/api/v1/restaurant_data?cat=Thai', {}
      expect(response_json['entries'].count).to eq 2
    end
  end
end
