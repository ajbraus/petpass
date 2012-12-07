require 'spec_helper'

describe "pets/edit" do
  before(:each) do
    @pet = assign(:pet, stub_model(Pet,
      :name => "MyString",
      :breed => "MyString",
      :rabies_expiration => "MyString",
      :color => "MyString",
      :age => 1,
      :sex => "MyString",
      :markings => "MyString",
      :rabies_tag_number => "MyString",
      :spayed_nutered => false,
      :owner => nil
    ))
  end

  it "renders the edit pet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pets_path(@pet), :method => "post" do
      assert_select "input#pet_name", :name => "pet[name]"
      assert_select "input#pet_breed", :name => "pet[breed]"
      assert_select "input#pet_rabies_expiration", :name => "pet[rabies_expiration]"
      assert_select "input#pet_color", :name => "pet[color]"
      assert_select "input#pet_age", :name => "pet[age]"
      assert_select "input#pet_sex", :name => "pet[sex]"
      assert_select "input#pet_markings", :name => "pet[markings]"
      assert_select "input#pet_rabies_tag_number", :name => "pet[rabies_tag_number]"
      assert_select "input#pet_spayed_nutered", :name => "pet[spayed_nutered]"
      assert_select "input#pet_owner", :name => "pet[owner]"
    end
  end
end
