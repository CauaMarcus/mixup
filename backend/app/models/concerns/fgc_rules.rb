module FgcRules
  URL_FORMAT = /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/

  NOTATION_TYPE = {
    arrows: 0,
    directional: 1,
    numpad: 2,
    number: 3,
    tekken: 4
    }
end
