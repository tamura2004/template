class User < ApplicationRecord
  belongs_to :job
  belongs_to :group
end
