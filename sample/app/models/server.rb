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

class Server < ApplicationRecord
  belongs_to :server_type
  belongs_to :service
end
