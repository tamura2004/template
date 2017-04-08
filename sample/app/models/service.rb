# == Schema Information
#
# Table name: services
#
#  id         :integer          not null, primary key
#  number     :string
#  name       :string
#  group_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Service < ApplicationRecord
  belongs_to :group
end
