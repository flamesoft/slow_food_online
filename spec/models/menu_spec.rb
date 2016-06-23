require 'rails_helper'

RSpec.describe Menu, type: :model do
  it 'should have valid Factory' do
    expect(FactoryGirl.create(:menu)).to be_valid
  end

  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
  end
end
