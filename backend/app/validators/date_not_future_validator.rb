class DateNotFutureValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.blank?

    unless value <= Date.current
      record.errors.add(attribute, options[:message] || "date can't be in the future.")
    end
  end
end
