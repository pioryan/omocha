class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  include Omocha::UserPreferences

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable

  # attr_accessible :title, :body
  has_many :authentications, :dependent => :delete_all
  
  def apply_omniauth(auth)
    if auth['extra']['raw_info']['email']
      self.email = auth['extra']['raw_info']['email']
    end
    authentications.build(:provider => auth['provider'], :uid => auth['uid'], :token => auth['credentials']['token'])
  end

  # Setup accessible (or protected) attributes for your model
  attr_accessible :firstname, :middlename, :lastname, :email, :password, :password_confirmation, :remember_me,
                  :key, :value

  validates_presence_of :firstname, :lastname
  has_many :preferences

  has_preference :language
  has_preference :receive_emails, :type => :boolean

end
