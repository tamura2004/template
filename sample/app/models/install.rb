class Install < ApplicationRecord
  belongs_to :server
  belongs_to :software
end
