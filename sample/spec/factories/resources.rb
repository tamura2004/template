# == Schema Information
#
# Table name: resources
#
#  id                  :integer          not null, primary key
#  server_id           :integer
#  cpu_memory_price_id :integer
#  status              :string
#  start_date          :date
#  end_date            :date
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

FactoryGirl.define do
  factory :resource do
    server nil
    cpu_memory_price nil
    status "MyString"
    start_date "2017-04-08"
    end_date "2017-04-08"
  end
end
