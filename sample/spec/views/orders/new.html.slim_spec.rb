require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :server => nil,
      :user => nil
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_server_id[name=?]", "order[server_id]"

      assert_select "input#order_user_id[name=?]", "order[user_id]"
    end
  end
end
