class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :firstname, :middlename, :lastname, :email, :password, :password_confirmation, :remember_me,
                  :key, :value

  validates_presence_of :firstname, :lastname
  # attr_accessible :title, :body
  has_many :preferences

  def language
    self.preferences.find_by_key('language').value
  end

  def language=(value)
    pref = self.preferences.where(:key => 'language').first
    if pref
      pref.update_attribute(:value, value)
    else
      self.preferences.create(:key => 'language', :value => value)
    end
  end

end
