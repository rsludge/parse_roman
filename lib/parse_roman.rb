require "parse_roman/version"

module ParseRoman
  class BadFormatError < RuntimeError; end

  NUMERALS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }
end

class String
  def parse_roman
    result = 0
    temp = self.dup
    ParseRoman::NUMERALS.each do |roman, arabic|
      while temp.index(roman) == 0
        result += arabic
        temp.slice!(roman)
      end
    end
    raise ParseRoman::BadFormatError if result == 0 or not temp.empty?
    result
  end
end
