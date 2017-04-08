class Resource < ApplicationRecord
  belongs_to :server
  belongs_to :cpu_memory_price
end
