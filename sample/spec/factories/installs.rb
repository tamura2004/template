# == Schema Information
#
# Table name: installs
#
#  id          :integer          not null, primary key
#  server_id   :integer
#  software_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :install do
    server nil
    software nil
  end
end
