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

require 'rails_helper'

RSpec.describe ServerInfo, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
