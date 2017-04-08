# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  number      :string
#  name        :string
#  division_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Group < ApplicationRecord
  belongs_to :division
end
