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

require 'rails_helper'

RSpec.describe Server, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
