# == Schema Information
#
# Table name: headquarters
#
#  id         :integer          not null, primary key
#  number     :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Headquarter, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
