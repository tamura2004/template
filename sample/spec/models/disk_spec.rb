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

require 'rails_helper'

RSpec.describe Disk, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
