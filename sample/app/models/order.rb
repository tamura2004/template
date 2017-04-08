# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  server_id      :integer
#  reception_date :date
#  start_date     :date
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :server
  belongs_to :user
end
