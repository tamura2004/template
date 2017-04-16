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

class CpuMemoryPrice < ApplicationRecord
end
