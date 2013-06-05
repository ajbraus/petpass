class License < ActiveRecord::Base
  attr_accessible :amount_paid, :county, :municipality, :kind, :printed, :expired
  validates :amount_paid, :municipality, :county, :kind, presence: true
  belongs_to :pet

  def expired?
    return Date.today > Date.parse("December 31")
  end
  
  def expires_on
    Date.parse("December 31")
  end

  def has_city_license?
    return self.city_license.created_at < Date.parse("December 31")
  end

  def has_park_license?
    return self.park_license.created_at < Date.parse("December 31")
  end

  def time_until_expires
    (Date.parse("December 31") - Date.today).to_i
  end

  def self.check_license_expiration
    # Look up city licenses that are not expired
    # if close to expiration
    #   send email reminder to renew
    # if expired today
    #   expire lisence and tell them it expired
    # if expired 2 weeks ago tell them
    # if expired 4 weeks ago tell them
    # if expired 6 weeks . . .
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << self.column_names
      all.each do |license|
        csv << license.attributes.values_at(*column_names)
      end
    end
  end  

  def self.to_pdf(options = {})
    CSV.generate(options) do |csv|
      csv << self.column_names
      all.each do |license|
        csv << license.attributes.values_at(*column_names)
      end
    end
  end  
end
