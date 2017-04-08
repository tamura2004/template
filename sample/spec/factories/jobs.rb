# == Schema Information
#
# Table name: jobs
#
#  id         :integer          not null, primary key
#  number     :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :job do
    number "MyString"
    name "MyString"
  end
end
