class Pet < ActiveRecord::Base
  belongs_to :user
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
    self.rabies_expiration.strftime "%A, %B %e"
  end

  def spayed_or_neutered?
    return spayed_neutered_attachment_file_size.present?
  end

  def vaccinated?
    return rabies_attachment_file_size.present? && rabies_expiration + 1.year > Date.today
  end

  def until_vaccination_expires
    Date.today - rabies_expiration + 1.year
  end

  def licensed?
    self.name.present?
  end

  def age
    diff = Date.today - self.born_on
    diff = diff.to_i
    return (diff/365.25).to_i
  end

end

