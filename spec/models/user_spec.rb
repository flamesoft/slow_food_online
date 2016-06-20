require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should have valid Factory' do
    expect(FactoryGirl.create(:user)).to be_valid
  end

  it 'is a customer by default' do
    expect(subject.role).to eq 'customer'
  end


  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :username }
    it { is_expected.to have_db_column :role }
  end

  describe 'Relationships' do
    pending
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_uniqueness_of(:username) }
    it { is_expected.to validate_presence_of(:role) }
  end
end


