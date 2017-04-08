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

require 'rails_helper'

RSpec.describe Service, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
