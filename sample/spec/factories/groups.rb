# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  number      :string
#  name        :string
#  division_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :group do
    number "MyString"
    name "MyString"
    division nil
  end
end
