require 'rails_helper'

RSpec.describe Ability, type: :model do
  let(:admin) { FactoryGirl.create(:user, role: 'admin') }
  let(:customer) { FactoryGirl.create(:user, role: 'customer') }
  let(:rest_owner) { FactoryGirl.create(:user, role: 'restaurant_owner') }

  describe 'for admin' do
    subject(:ability) { Ability.new(admin) }
    it { is_expected.to be_able_to(:manage, Restaurant.new) }
  end

  describe 'for customer' do
    subject(:ability) { Ability.new(customer) }
    it { is_expected.not_to be_able_to(:manage, Restaurant.new) }
    it { is_expected.to be_able_to(:read, Restaurant.new) }
  end

  describe 'for restaurant_owner' do
    subject(:ability) { Ability.new(rest_owner) }
    it { is_expected.not_to be_able_to(:manage, Restaurant.new) }
    it { is_expected.to be_able_to(:read, Restaurant.new) }
  end

end