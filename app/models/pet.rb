class Pet < ActiveRecord::Base
  belongs_to :owner
  attr_accessible :age, 
  								:breed, 
  								:color, 
  								:markings, 
  								:name, 
  								:rabies_expiration, 
  								:rabies_tag_number, 
  								:sex, 
  								:spayed_neutered, 
  								:rabies_attachment,
  								:spayed_neutered_attachment,
                  :avatar

  validates :age,
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
                             :default_url => "https://s3.amazonaws.com/petpass/pet/avatar/original/default_avatar.png"


  has_attached_file :rabies_attachment,
                             :convert_options => { :original => '-quality 60' },
                             :storage => :s3,
                             :s3_credentials => S3_CREDENTIALS,
                             :path => "pet_file_uploads/:id/rabies_attachment.:extension",
                             :default_url => "https://s3.amazonaws.com/petpass/pet/rabies_attachment/original/default_rabies_attachment.png"

  has_attached_file :spayed_neutered_attachment,
                             :convert_options => { :original => '-quality 40' },
                             :storage => :s3,
                             :s3_credentials => S3_CREDENTIALS,
                             :path => "pet_file_uploads/:id/spayed_neutered_attachment.:extension",
                             :default_url => "https://s3.amazonaws.com/petpass/pet/spayed_neutered_attachment/original/default_spayed_neutered_attachment.png"


  validates :spayed_neutered_attachment,
  					:rabies_attachment, 
  					:attachment_presence => true,
            :attachment_content_type => { :content_type => [ 'image/png', 'image/jpg', 'image/gif', 'image/jpeg', 'application/pdf' ] }                           

  validates :avatar,
            :attachment_content_type => { :content_type => [ 'image/png', 'image/jpg', 'image/gif', 'image/jpeg' ] }                           

end

