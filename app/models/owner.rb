class Owner < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :pets, dependent: :destroy

  accepts_nested_attributes_for :pets, :allow_destroy => true

  attr_accessible :address_one, 
  								:address_two, 
  								:city, 
  								:email, 
  								:full_name, 
  								:state, 
  								:phone_number,
  								:zip,
  								:pets_attributes

  validates  :address_one,
  					 :city,
  					 :email,
  					 :full_name,
  					 :state,
  					 :zip,
  					 presence: true

  validates :zip, :numericality => true

  def first_name
    full_name.split(' ')[0]
  end

  def last_name
    full_name.split.count == 3 ? full_name.split(' ')[2] : full_name.split(' ')[1]
  end

  def middle_name
    full_name.split.count == 3 ? full_name.split(' ')[1] : nil
  end

  def send_welcome
    if vendor?
      Notifier.delay.vendor_welcome(self)
    else
      Notifier.delay.welcome(self)
    end
  end

end
