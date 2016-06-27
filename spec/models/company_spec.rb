require 'rails_helper'

RSpec.describe Company, type: :model do
  describe 'association' do
    it { should have_many(:jobs) }
  end

  describe 'validation' do
    it { should validate_presence_of(:name) }
  end
end
