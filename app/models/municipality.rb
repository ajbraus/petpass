class Municipality < ActiveRecord::Base
  belongs_to :county
  attr_accessible :address_one, 
                  :address_two, 
                  :bank_account_number, 
                  :bank_routing_number, 
                  :cat_intact_fee, 
                  :cat_sp_fee, 
                  :dog_intact_fee, 
                  :dog_sp_fee, 
                  :email, 
                  :late_fee, 
                  :name, 
                  :phone, 
                  :requires_cat_license, 
                  :zip

  validates :county, :name, presence: true

  def county_name
    county.try(:name)
  end

  def county_name=(name)
    self.county = Category.find_by_name(name) if name.present?
  end

  def live?
    #if all attributes are present
  end
end
