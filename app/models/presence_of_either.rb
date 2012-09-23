class PresenceOfEither < ActiveModel::Validator
  def validate(record)
    fields = options[:fields]
    if not fields.empty?
      non_blank_field = fields.any? do |field|
        not record.send(field).blank?
      end
      if not non_blank_field
        human_readable_fields = fields.collect { |f| f.to_s.humanize }
        fields.each do |f|
          record.errors.add( f, "must at least not be blank ( any one of the ff. should not be blank: #{human_readable_fields.join(', ')} )" )
        end
      end
    end
  end
end
