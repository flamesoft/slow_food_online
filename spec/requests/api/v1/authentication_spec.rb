require 'rails_helper'

RSpec.describe 'Auth', type: :request do

  describe 'POST /api/v1/auth/sign_in' do

    let(:headers) { { HTTP_ACCEPT: 'application/json' } }
    let!(:user) { FactoryGirl.create(:user) }
    let(:credentials) { user.create_new_auth_token }

    it 'valid credentials returns status 200' do
      post '/api/v1/auth/sign_in', { email: user.email, password: user.password }, headers
      expect(response.status).to eq 200
    end

    it 'valid credentials returns correct user' do
      post '/api/v1/auth/sign_in', { email: user.email, password: user.password }, headers
      expect(response.header['uid']).to eq user.uid
    end
  end
end
