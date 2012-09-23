
class Item < ActiveRecord::Base
  include ActiveModel::Validations

  attr_accessible :currency, :description, :english_name, :gtin_code, :height, :jan_code, :japanese_name, :length, :price, :quantity_produced, :scale_full, :scale_mini, :upc_code, :width

  with_options :allow_nil => true do |item|
    item.validates :height, :numericality => true
    item.validates :width, :numericality => true
    item.validates :length, :numericality => true
    item.validates :scale_mini, :numericality => true
    item.validates :scale_full, :numericality => true
  end

  validates :price, :numericality => true, :allow_nil => true

  validates_presence_of :price, :currency

  validates_with PresenceOfEither, :fields => [:english_name, :japanese_name]
end
