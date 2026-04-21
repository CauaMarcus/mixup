class ImageUrlValidator < ActiveModel::EachValidator
  STATIC_IMAGE_FORMAT = /\.(png|jpg|jpeg)\z/i

  def validate_each(record, attribute, value)
    return if value.blank?

    unless value =~ FgcRules::URL_FORMAT && value =~ STATIC_IMAGE_FORMAT
      record.erros.add(:attribute, options[:message] || "needs to be a valid url.")
    end
  end
end
