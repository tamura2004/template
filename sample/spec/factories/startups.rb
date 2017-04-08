# == Schema Information
#
# Table name: startups
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :startup do
    name "MyString"
  end
end
