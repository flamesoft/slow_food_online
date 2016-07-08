require 'rails_helper'

RSpec.describe 'Auth', type: :request do

  describe 'POST /api/v1/auth/sign_in' do
    let!(:user) { FactoryGirl.create(:user) }

    before do
      post '/api/v1/auth/sign_in', { email: user.email, password: user.password }
    end

    it 'valid credentials returns status 200' do
      expect(response.status).to eq 200
    end

    it 'valid credentials returns correct user' do
      expect(response.header['uid']).to eq user.uid
    end
  end
end
