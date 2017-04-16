# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  number     :string
#  name       :string
#  job        :integer
#  group      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  def job_enum
    JobTypes.collection
  end
end
