require 'spec_helper'

describe "owners/show" do
  before(:each) do
    @owner = assign(:owner, stub_model(Owner,
      :full_name => "Full Name",
      :email => "Email",
      :address_one => "Address One",
      :address_two => "Address Two",
      :zip => "Zip",
      :city => "City",
      :state => "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Full Name/)
    rendered.should match(/Email/)
    rendered.should match(/Address One/)
    rendered.should match(/Address Two/)
    rendered.should match(/Zip/)
    rendered.should match(/City/)
    rendered.should match(/State/)
  end
end
