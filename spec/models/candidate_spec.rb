require 'rails_helper'

RSpec.describe Candidate, type: :model do
  describe 'association' do
    it { should belong_to(:job) }
  end

  describe 'validation' do
    it { should validate_presence_of(:full_name) }
  end
end
