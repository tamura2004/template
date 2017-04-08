# == Schema Information
#
# Table name: server_infos
#
#  id         :integer          not null, primary key
#  server_id  :integer
#  account_id :integer
#  startup_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :server_info do
    server nil
    account nil
    startup nil
  end
end
