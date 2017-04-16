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
# Indexes
#
#  index_orders_on_server_id  (server_id)
#  index_orders_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_2416ac590f  (server_id => servers.id)
#  fk_rails_f868b47f6a  (user_id => users.id)
#

class Order < ApplicationRecord
  belongs_to :server
  belongs_to :user
end
