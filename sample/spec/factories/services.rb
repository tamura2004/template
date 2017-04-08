# == Schema Information
#
# Table name: services
#
#  id         :integer          not null, primary key
#  number     :string
#  name       :string
#  group_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :service do
    number "MyString"
    name "MyString"
    group nil
  end
end
