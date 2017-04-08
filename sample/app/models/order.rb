class Order < ApplicationRecord
  belongs_to :server
  belongs_to :user
end
