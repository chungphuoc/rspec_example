FactoryGirl.define do
  factory :company do
    name { FFaker::Company.name.concat(" #{Random.rand(1...100)}") }
  end
end
