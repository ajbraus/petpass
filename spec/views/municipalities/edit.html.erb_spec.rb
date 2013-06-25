require 'spec_helper'

describe "municipalities/edit" do
  before(:each) do
    @municipality = assign(:municipality, stub_model(Municipality,
      :name => "MyString",
      :email => "MyString",
      :address_one => "MyString",
      :address_two => "MyString",
      :zip => "MyString",
      :phone => "MyString",
      :bank_routing_number => 1,
      :bank_account_number => 1,
      :late_fee => 1,
      :dog_intact_fee => 1,
      :dog_sp_fee => 1,
      :requires_cat_license => false,
      :cat_intact_fee => 1,
      :cat_sp_fee => 1,
      :county => nil
    ))
  end

  it "renders the edit municipality form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => municipalities_path(@municipality), :method => "post" do
      assert_select "input#municipality_name", :name => "municipality[name]"
      assert_select "input#municipality_email", :name => "municipality[email]"
      assert_select "input#municipality_address_one", :name => "municipality[address_one]"
      assert_select "input#municipality_address_two", :name => "municipality[address_two]"
      assert_select "input#municipality_zip", :name => "municipality[zip]"
      assert_select "input#municipality_phone", :name => "municipality[phone]"
      assert_select "input#municipality_bank_routing_number", :name => "municipality[bank_routing_number]"
      assert_select "input#municipality_bank_account_number", :name => "municipality[bank_account_number]"
      assert_select "input#municipality_late_fee", :name => "municipality[late_fee]"
      assert_select "input#municipality_dog_intact_fee", :name => "municipality[dog_intact_fee]"
      assert_select "input#municipality_dog_sp_fee", :name => "municipality[dog_sp_fee]"
      assert_select "input#municipality_requires_cat_license", :name => "municipality[requires_cat_license]"
      assert_select "input#municipality_cat_intact_fee", :name => "municipality[cat_intact_fee]"
      assert_select "input#municipality_cat_sp_fee", :name => "municipality[cat_sp_fee]"
      assert_select "input#municipality_county", :name => "municipality[county]"
    end
  end
end
