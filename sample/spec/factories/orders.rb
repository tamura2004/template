# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  server_id      :integer
#  reception_date :date
#  start_date     :date
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :order do
    server nil
    reception_date "2017-04-08"
    start_date "2017-04-08"
    user nil
  end
end
