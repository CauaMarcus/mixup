class UrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.blank?

    unless value =~ FgcRules::URL_FORMAT
      record.errors.add(:attribute, options[:message] || "url needs to be valid." )
    end
  end
end
