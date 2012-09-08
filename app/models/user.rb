class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  include Omocha::UserPreferences

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :firstname, :middlename, :lastname, :email, :password, :password_confirmation, :remember_me,
                  :key, :value

  validates_presence_of :firstname, :lastname
  has_many :preferences

  has_preference :language
  has_preference :receive_emails, :type => :boolean

end
