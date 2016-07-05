require 'rails_helper'

RSpec.describe Order, type: :model do

  describe 'Relationships' do
    it { is_expected.to belong_to :user }
  end
end
