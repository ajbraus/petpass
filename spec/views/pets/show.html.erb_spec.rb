require 'spec_helper'

describe "pets/show" do
  before(:each) do
    @pet = assign(:pet, stub_model(Pet,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Breed/)
    rendered.should match(/Rabies Expiration/)
    rendered.should match(/Color/)
    rendered.should match(/1/)
    rendered.should match(/Sex/)
    rendered.should match(/Markings/)
    rendered.should match(/Rabies Tag Number/)
    rendered.should match(/false/)
    rendered.should match(//)
  end
end
