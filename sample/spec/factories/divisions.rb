# == Schema Information
#
# Table name: divisions
#
#  id             :integer          not null, primary key
#  number         :string
#  name           :string
#  headquarter_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :division do
    number "MyString"
    name "MyString"
    headquarter nil
  end
end
