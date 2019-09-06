require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :email => "Email",
        :name => "Name",
        :last_name => "Last Name",
        :mobile_phone => "Mobile Phone"
      ),
      User.create!(
        :email => "Email",
        :name => "Name",
        :last_name => "Last Name",
        :mobile_phone => "Mobile Phone"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile Phone".to_s, :count => 2
  end
end
