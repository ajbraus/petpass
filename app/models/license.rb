class License < ActiveRecord::Base
  attr_accessible :amount_paid, :county, :municipality, :kind
  belongs_to :pet

  def expired?
    return Date.today > self.created_at.to_date + 1.year
  end
  
  def expires_on
    self.created_at + 1.year
  end

  def has_city_license?
    return self.city_license.created_at < Time.now - 1.year
  end

  def has_park_license?
    return self.park_license.created_at < Time.now - 1.year
  end

  def time_until_expires
    (self.expires_on.to_date - Date.today).to_i
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
end
