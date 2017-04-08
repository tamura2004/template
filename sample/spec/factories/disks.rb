# == Schema Information
#
# Table name: disks
#
#  id              :integer          not null, primary key
#  resource_id     :integer
#  disk_type_id    :integer
#  sequence_number :integer
#  size            :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :disk do
    resource nil
    disk_type nil
    sequence_number 1
    size 1
  end
end
