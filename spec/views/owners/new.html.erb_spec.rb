require 'spec_helper'

describe "owners/new" do
  before(:each) do
    assign(:owner, stub_model(Owner,
      :full_name => "MyString",
      :email => "MyString",
      :address_one => "MyString",
      :address_two => "MyString",
      :zip => "MyString",
      :city => "MyString",
      :state => "MyString"
    ).as_new_record)
  end

  it "renders new owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => owners_path, :method => "post" do
      assert_select "input#owner_full_name", :name => "owner[full_name]"
      assert_select "input#owner_email", :name => "owner[email]"
      assert_select "input#owner_address_one", :name => "owner[address_one]"
      assert_select "input#owner_address_two", :name => "owner[address_two]"
      assert_select "input#owner_zip", :name => "owner[zip]"
      assert_select "input#owner_city", :name => "owner[city]"
      assert_select "input#owner_state", :name => "owner[state]"
    end
  end
end
