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

require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
