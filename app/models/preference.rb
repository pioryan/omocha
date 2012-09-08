class Preference < ActiveRecord::Base
  validates_presence_of :key, :value
  belongs_to :user
  attr_accessible :key, :value, :user
end
