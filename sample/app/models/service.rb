# == Schema Information
#
# Table name: services
#
#  id         :integer          not null, primary key
#  number     :string
#  name       :string
#  group      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Service < ApplicationRecord
end
