# == Schema Information
#
# Table name: cpu_memory_prices
#
#  id         :integer          not null, primary key
#  cpu        :integer
#  memory     :integer
#  price      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :cpu_memory_price do
    cpu 1
    memory 1
    price 1
  end
end
