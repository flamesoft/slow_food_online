require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should have valid Factory' do
    expect(FactoryGirl.create(:user)).to be_valid
  end

  it 'is a customer by default' do
    expect(subject.role).to eq 'customer'
  end

  it 'can set the role to admin' do
    admin = FactoryGirl.create(:user, role: 'admin')
    expect(admin).to be_valid
  end

  it 'can set the role to restaurant owner' do
    owner = FactoryGirl.create(:user, role: 'restaurant_owner')
    expect(owner).to be_valid
  end

  it 'cannot set the role to x' do
   # invalid_user = FactoryGirl.create(:user, role: 'x')
   # expect(invalid_user).not_to be_valid

    expect { FactoryGirl.create(:user, role: 'x') }
        .to raise_error(ActiveRecord::RecordInvalid, 'Validation failed: Role x is not permitted')
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
