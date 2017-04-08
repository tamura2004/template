# == Schema Information
#
# Table name: server_infos
#
#  id         :integer          not null, primary key
#  server_id  :integer
#  account_id :integer
#  startup_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ServerInfo < ApplicationRecord
  belongs_to :server
  belongs_to :account
  belongs_to :startup
end
