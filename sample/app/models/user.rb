# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  number     :string
#  name       :string
#  job_id     :integer
#  group_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  belongs_to :job
  belongs_to :group
end
