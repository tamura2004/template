# == Schema Information
#
# Table name: headquarters
#
#  id         :integer          not null, primary key
#  number     :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :headquarter do
    number "MyString"
    name "MyString"
  end
end
