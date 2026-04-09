module FgcRules
  HEX_FORMAT = /\A#?(?:[A-F0-9]{3}){1,2}\z/i
  URL_FORMAT = /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/
  STATIC_IMAGE_FORMAT = /\.(png|jpg|jpeg)\z/i
end
