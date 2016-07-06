require 'rails_helper'
require 'carrierwave/test/matchers'

RSpec.describe Upload, type: :model do
  include CarrierWave::Test::Matchers
  before do
     Upload.enable_processing = true
     File.open(path_to_file) { |f| uploader.store!(f) }
   end

   after do
     Upload.enable_processing = false
     uploader.remove!
   end

  it "has the correct format" do
    expect(uploader).to be_format('png') || be_format('jpg')
  end
end
