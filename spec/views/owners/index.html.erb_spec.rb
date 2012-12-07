require 'spec_helper'

describe "owners/index" do
  before(:each) do
    assign(:owners, [
      stub_model(Owner,
        :full_name => "Full Name",
        :email => "Email",
        :address_one => "Address One",
        :address_two => "Address Two",
        :zip => "Zip",
        :city => "City",
        :state => "State"
      ),
      stub_model(Owner,
        :full_name => "Full Name",
        :email => "Email",
        :address_one => "Address One",
        :address_two => "Address Two",
        :zip => "Zip",
        :city => "City",
        :state => "State"
      )
    ])
  end

  it "renders a list of owners" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address One".to_s, :count => 2
    assert_select "tr>td", :text => "Address Two".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
