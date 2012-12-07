require 'spec_helper'

describe "pets/index" do
  before(:each) do
    assign(:pets, [
      stub_model(Pet,
        :name => "Name",
        :breed => "Breed",
        :rabies_expiration => "Rabies Expiration",
        :color => "Color",
        :age => 1,
        :sex => "Sex",
        :markings => "Markings",
        :rabies_tag_number => "Rabies Tag Number",
        :spayed_nutered => false,
        :owner => nil
      ),
      stub_model(Pet,
        :name => "Name",
        :breed => "Breed",
        :rabies_expiration => "Rabies Expiration",
        :color => "Color",
        :age => 1,
        :sex => "Sex",
        :markings => "Markings",
        :rabies_tag_number => "Rabies Tag Number",
        :spayed_nutered => false,
        :owner => nil
      )
    ])
  end

  it "renders a list of pets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Breed".to_s, :count => 2
    assert_select "tr>td", :text => "Rabies Expiration".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => "Markings".to_s, :count => 2
    assert_select "tr>td", :text => "Rabies Tag Number".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
