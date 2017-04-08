# == Schema Information
#
# Table name: resources
#
#  id                  :integer          not null, primary key
#  server_id           :integer
#  cpu_memory_price_id :integer
#  status              :string
#  start_date          :date
#  end_date            :date
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'rails_helper'

RSpec.describe Resource, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
