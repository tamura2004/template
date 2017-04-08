class Server < ApplicationRecord
  belongs_to :server_type
  belongs_to :service
end
