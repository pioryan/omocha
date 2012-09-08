class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :firstname, :middlename, :lastname, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  validates_presence_of :firstname, :lastname
end
