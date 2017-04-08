class Disk < ApplicationRecord
  belongs_to :resource
  belongs_to :disk_type
end
