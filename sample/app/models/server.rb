# == Schema Information
#
# Table name: servers
#
#  id              :integer          not null, primary key
#  name            :string
#  hostname        :string
#  server_type     :integer
#  sequence_number :integer
#  service_id      :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_servers_on_service_id  (service_id)
#
# Foreign Keys
#
#  fk_rails_66cce08090  (service_id => services.id)
#

class Server < ApplicationRecord
  belongs_to :service
end
