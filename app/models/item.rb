
class Item < ActiveRecord::Base
  include ActiveModel::Validations

  attr_accessible :currency, :description, :english_name,
                  :gtin_code, :height, :jan_code, :japanese_name,
                  :length, :price, :quantity_produced, :scale_full,
                  :scale_mini, :upc_code, :width, :ean_code, :sku_code,
                  :manufacturer_number, :asset_file_name, :asset_content_type,
                  :asset_file_size, :asset_updated_at, :asset

  acts_as_taggable
  acts_as_taggable_on :official_title, :edition, :category, :origin, :release_date, :character, :artist, :classification, :material, :other_detail
  #For rails admin..
  attr_accessible :tag_list, :official_title_list, :edition_list, :category_list, :origin_list, :release_date_list, :character_list, :artist_list, :classification_list, :material_list, :other_detail_list

  ajaxful_rateable :stars => 10, :allow_update => true

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

  has_attached_file :asset, {
      :styles => { :medium => "300x300>", :thumb => "100x100>" },
      :default_url => ":custom_url"
  }.merge(PAPERCLIP_DEFAULT_OPTIONS)
end
