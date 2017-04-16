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
# Indexes
#
#  index_installs_on_server_id    (server_id)
#  index_installs_on_software_id  (software_id)
#
# Foreign Keys
#
#  fk_rails_412024c09a  (server_id => servers.id)
#  fk_rails_591544c5d6  (software_id => softwares.id)
#

class Install < ApplicationRecord
  belongs_to :server
  belongs_to :software
end
