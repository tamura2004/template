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

class Resource < ApplicationRecord
  belongs_to :server
  belongs_to :cpu_memory_price
end
