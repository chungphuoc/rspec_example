require 'rails_helper'

RSpec.describe Job, type: :model do
  describe 'association' do
    it { should belong_to(:company) }
    it { should have_many(:candidates) }
  end

  describe 'validation' do
    it { should validate_presence_of(:name) }
  end
end
