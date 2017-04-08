# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  number     :string
#  name       :string
#  job_id     :integer
#  group_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :user do
    number "MyString"
    name "MyString"
    job nil
    group nil
  end
end
