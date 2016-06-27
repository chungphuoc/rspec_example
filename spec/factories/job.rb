FactoryGirl.define do
  factory :job do
    name { FFaker::Name.name }
    company { FactoryGirl.create(:company) }
  end
end
