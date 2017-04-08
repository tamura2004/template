class ServerInfo < ApplicationRecord
  belongs_to :server
  belongs_to :account
  belongs_to :startup
end
