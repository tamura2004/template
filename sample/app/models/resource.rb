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
# Indexes
#
#  index_resources_on_cpu_memory_price_id  (cpu_memory_price_id)
#  index_resources_on_server_id            (server_id)
#
# Foreign Keys
#
#  fk_rails_9296fda802  (cpu_memory_price_id => cpu_memory_prices.id)
#  fk_rails_e33593a19c  (server_id => servers.id)
#

class Resource < ApplicationRecord
  belongs_to :server
  belongs_to :cpu_memory_price
end
