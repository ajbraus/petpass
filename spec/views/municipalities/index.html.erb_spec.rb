require 'spec_helper'

describe "municipalities/index" do
  before(:each) do
    assign(:municipalities, [
      stub_model(Municipality,
        :name => "Name",
        :email => "Email",
        :address_one => "Address One",
        :address_two => "Address Two",
        :zip => "Zip",
        :phone => "Phone",
        :bank_routing_number => 1,
        :bank_account_number => 2,
        :late_fee => 3,
        :dog_intact_fee => 4,
        :dog_sp_fee => 5,
        :requires_cat_license => false,
        :cat_intact_fee => 6,
        :cat_sp_fee => 7,
        :county => nil
      ),
      stub_model(Municipality,
        :name => "Name",
        :email => "Email",
        :address_one => "Address One",
        :address_two => "Address Two",
        :zip => "Zip",
        :phone => "Phone",
        :bank_routing_number => 1,
        :bank_account_number => 2,
        :late_fee => 3,
        :dog_intact_fee => 4,
        :dog_sp_fee => 5,
        :requires_cat_license => false,
        :cat_intact_fee => 6,
        :cat_sp_fee => 7,
        :county => nil
      )
    ])
  end

  it "renders a list of municipalities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address One".to_s, :count => 2
    assert_select "tr>td", :text => "Address Two".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
