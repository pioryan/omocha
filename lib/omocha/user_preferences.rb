module Omocha::UserPreferences
  extend ActiveSupport::Concern

  module ClassMethods

    def has_preference(attribute, options = {})
      define_method "#{attribute}" do
        value = self.preferences.find_by_key("#{attribute}").try(:value)
        if options[:type] == :boolean
          value = value == "1" ? true : false
        elsif options[:type] == :integer
          value = value.to_i
        end
        value
      end

      define_method "#{attribute}=" do |value|
        pref = self.preferences.where(:key => "#{attribute}").first
        if pref
          pref.update_attribute(:value, value)
        else
          self.preferences.create(:key => "#{attribute}", :value => value)
        end
      end

    end

  end

end