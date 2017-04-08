# == Schema Information
#
# Table name: servers
#
#  id              :integer          not null, primary key
#  name            :string
#  hostname        :string
#  server_type_id  :integer
#  sequence_number :integer
#  service_id      :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :server do
    name "MyString"
    hostname "MyString"
    server_type nil
    sequence_number 1
    service nil
  end
end
