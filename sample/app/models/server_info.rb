# == Schema Information
#
# Table name: server_infos
#
#  id         :integer          not null, primary key
#  server_id  :integer
#  account    :integer
#  startup    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_server_infos_on_server_id  (server_id)
#
# Foreign Keys
#
#  fk_rails_e5f4472ead  (server_id => servers.id)
#

class ServerInfo < ApplicationRecord
  belongs_to :server
end
