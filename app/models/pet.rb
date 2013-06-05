class Pet < ActiveRecord::Base
  belongs_to :user
  has_many :licenses, dependent: :destroy
  attr_accessible :name,
                  :avatar,
                  :breed, 
                  :born_on, 
  								:sex, 
                  :color, 
  								:markings,  
  								:rabies_expiration, 
  								:rabies_tag_number, 
  								:spayed_neutered, 
  								:rabies_attachment,
  								:spayed_neutered_attachment,
                  :microchip_code,
                  :species,
                  :recent,
                  :at_humane_society

  validates :born_on,
  					:breed,
  					:color,
  					:name,
  					:sex,
            :species,
  					presence: true

  has_attached_file :avatar,
                             :convert_options => { :original => '-quality 60' },
                             :storage => :s3,
                             :s3_credentials => S3_CREDENTIALS,
                             :path => "pet_file_uploads/:id/avatar.:extension",
                             :default_url => "https://s3.amazonaws.com/petpass/default_avatar.png"


  has_attached_file :rabies_attachment,
                             :convert_options => { :original => '-quality 60' },
                             :storage => :s3,
                             :s3_credentials => S3_CREDENTIALS,
                             :path => "pet_file_uploads/:id/rabies_attachment.:extension",
                             :default_url => "https://s3.amazonaws.com/petpass/default_rabies_attachment.png"

  has_attached_file :spayed_neutered_attachment,
                             :convert_options => { :original => '-quality 40' },
                             :storage => :s3,
                             :s3_credentials => S3_CREDENTIALS,
                             :path => "pet_file_uploads/:id/spayed_neutered_attachment.:extension",
                             :default_url => "https://s3.amazonaws.com/petpass/default_spayed_neutered_attachment.png"


  validates	:rabies_attachment, :spayed_neutered_attachment,
            :attachment_content_type => { :content_type => [ 'image/png', 'image/jpg', 'image/gif', 'image/jpeg', 'application/pdf' ] }                           

  validates :avatar,
            :attachment_content_type => { :content_type => [ 'image/png', 'image/jpg', 'image/gif', 'image/jpeg' ] }                           

  SPECIES = ["Dog", "Cat"]

  def name=(s)
    write_attribute(:name, s.to_s.titleize) # The to_s is in case you get nil/non-string
  end


  def nice_rabies_expiration
    if self.at_humane_society? && self.created_at + 1.year > Date.today
      (Date.today - self.created_at + 1.year).strftime "%b %e %Y"
    elsif self.rabies_expiration.present?
      self.rabies_expiration.strftime "%b %e %Y"
    else 
      "No Expiration"
    end
  end

  def rabies_proof
    if self.at_humane_society? && self.created_at + 1.year > Date.today
      return "Pet Adopted from Local Humane Society"
    else
      return license.pet.rabies_attachment.url(:original)
    end
  end

  def spayed_or_neutered_proof
    if self.at_humane_society?
      return "Pet Adopted from Local Humane Society"
    else
      return license.pet.spayed_neutered_attachment.url(:original)
    end
  end

  def spayed_or_neutered?
    if self.at_humane_society?
      return true
    else
      return spayed_neutered_attachment_file_size.present?
    end
  end

  def vaccinated?
    if self.at_humane_society? && self.created_at + 1.year > Date.today
      return true
    else
      return rabies_attachment_file_size.present? && rabies_tag_number.present? && rabies_expiration.present? && rabies_expiration + 1.year > Date.today
    end
  end

  def until_vaccination_expires
    if self.at_humane_society?
      Date.today - self.created_at + 1.year
    else
      Date.today - self.rabies_expiration + 1.year
    end
  end

  def has_municipal_license?
    self.licenses.where(kind: "municipal").each do |l|
      unless l.expired?
        return true
      end
    end
    return false
  end

  def has_park_license?
    self.licenses.where(kind: "park").each do |l|
      unless l.expired?
        return true
      end
    end
    return false
  end

  def has_any_license?
    self.licenses.each do |l|
      unless l.expired?
        return true
      end
    end
    return false
  end

  def age
    diff = Date.today - self.born_on
    diff = diff.to_i
    return (diff/365.25).to_i
  end

  def dog?
    return self.species.downcase == "dog"
  end

  def cat?
    return self.species.downcase == "cat"
  end

  def self.need_information
    Pet.all.each do |p|
      unless p.vaccinated? && p.spayed_or_neutered? && p.rabies_expiration.present? && p.rabies_tag_number.present?
        Notifier.delay.need_information(p)
      end
    end
  end

  def self.no_license_reminder
    Pet.all.each do |p|
      if p.licenses.blank?
        Notifier.delay.no_license_reminder(p)
      end
    end
  end

end

