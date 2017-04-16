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
# Indexes
#
#  index_disks_on_disk_type_id  (disk_type_id)
#  index_disks_on_resource_id   (resource_id)
#
# Foreign Keys
#
#  fk_rails_3d6a765686  (disk_type_id => disk_types.id)
#  fk_rails_8799e81c80  (resource_id => resources.id)
#

class Disk < ApplicationRecord
  belongs_to :resource
  belongs_to :disk_type
end
