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

require 'rails_helper'

RSpec.describe Group, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
