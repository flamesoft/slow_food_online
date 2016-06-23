require 'rails_helper'

RSpec.describe Menu, type: :model do
  it 'should have valid Factory' do
    expect(FactoryGirl.create(:menu)).to be_valid
  end
end
