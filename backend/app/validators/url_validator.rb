class URLVALIDATOR < ActiveModel::EachValidator
  def url(record, attribute, value)
    return if value.blank?

    unless value =~ FgcRules::URL_FORMAT
      record.errors.add(options[:message] || "url needs to be valid." )
    end
  end
end
