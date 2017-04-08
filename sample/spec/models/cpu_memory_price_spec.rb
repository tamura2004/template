# == Schema Information
#
# Table name: cpu_memory_prices
#
#  id         :integer          not null, primary key
#  cpu        :integer
#  memory     :integer
#  price      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe CpuMemoryPrice, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
