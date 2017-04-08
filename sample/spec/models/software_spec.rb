# == Schema Information
#
# Table name: softwares
#
#  id         :integer          not null, primary key
#  name       :string
#  version    :string
#  edition    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Software, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
