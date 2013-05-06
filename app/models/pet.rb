class Pet < ActiveRecord::Base
  belongs_to :user
  has_many :licenses
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
                  :recent

  validates :born_on,
  					:breed,
  					:color,
  					:name,
  					:sex,
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

  def nice_rabies_expiration
    self.rabies_expiration.strftime "%b %e %Y"
  end

  def spayed_or_neutered?
    return spayed_neutered_attachment_file_size.present?
  end

  def vaccinated?
    return rabies_attachment_file_size.present? && rabies_expiration + 1.year > Date.today && rabies_tag_number.present?
  end

  def until_vaccination_expires
    Date.today - rabies_expiration + 1.year
  end

  def has_municiple_license?
    self.licenses.where(kind: "municiple").each do |l|
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

