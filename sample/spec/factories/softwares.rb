# == Schema Information
#
# Table name: softwares
#
#  id         :integer          not null, primary key
#  name       :string
#  version    :string
#  edition    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :software do
    name "MyString"
    version "MyString"
    edition "MyString"
  end
end
