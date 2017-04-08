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

class Install < ApplicationRecord
  belongs_to :server
  belongs_to :software
end
