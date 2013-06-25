require 'spec_helper'

describe "municipalities/show" do
  before(:each) do
    @municipality = assign(:municipality, stub_model(Municipality,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Address One/)
    rendered.should match(/Address Two/)
    rendered.should match(/Zip/)
    rendered.should match(/Phone/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/false/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(//)
  end
end
