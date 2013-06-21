class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, 
                  :password, 
                  :password_confirmation, 
                  :remember_me,
                  :address_one, 
                  :address_two, 
                  :city, 
                  :full_name, 
                  :state, 
                  :phone,
                  :zip,
                  :admin,
                  :county,
                  :recent,
                  :pets_attributes

  has_many :pets, dependent: :destroy

  accepts_nested_attributes_for :pets #, :reject_if => lambda { |a| ( a[:name].blank? ) }, :allow_destroy => true

  validates  :address_one,
             :city,
             :full_name,
             :state,
             :zip,
             :county,
             presence: true

  after_create :send_welcome

  def first_name
    full_name.split(' ')[0]
  end

  def last_name
    full_name.split.count == 3 ? full_name.split(' ')[2] : full_name.split(' ')[1]
  end

  def middle_name
    full_name.split.count == 3 ? full_name.split(' ')[1] : nil
  end

  def full_name=(s)
    write_attribute(:full_name, s.to_s.titleize) # The to_s is in case you get nil/non-string
  end

  def nice_phone
    phone.tr('^A-Za-z0-9', '')
  end

  def send_welcome
    Notifier.delay.welcome(self, self.pets.first)
  end
end
