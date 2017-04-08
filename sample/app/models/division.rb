# == Schema Information
#
# Table name: divisions
#
#  id             :integer          not null, primary key
#  number         :string
#  name           :string
#  headquarter_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Division < ApplicationRecord
  belongs_to :headquarter
end
