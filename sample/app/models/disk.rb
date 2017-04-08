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

class Disk < ApplicationRecord
  belongs_to :resource
  belongs_to :disk_type
end
