require 'rails_helper'

RSpec.describe 'Auth', type: :request do

  describe 'POST /api/v1/auth' do
    let(:headers) { {HTTP_ACCEPT: 'application/json'} }
    let!(:customer) { FactoryGirl.create(:user, username: 'test', email: 'test@gmail.com') }
    let(:credentials) { customer.create_new_auth_token }

    it 'is able to sign in' do
      post '/api/v1/auth', {email: 'test@gmail.com',
                            password: 'password'}, headers.merge!(credentials)
      expect(response_json['status']).to eq('Welcome')
      expect(response.status).to eq 200
    end
  end
end
