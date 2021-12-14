=begin
Write your code for the 'Roman Numerals' exercise in this file. Make the tests in
`roman_numerals_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/roman-numerals` directory.
=end

class Integer

  UNITS = { 1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V", 6 => "VI", 7 => "VII", 8 => "VIII", 9 => "IX" }
  TENS = { 1 => "X", 2 => "XX", 3 => "XXX", 4 => "XL", 5 => "L", 6 => "LX", 7 => "LXX", 8 => "LXXX", 9 => "XC" }
  HUNDREDS = { 1 => "C", 2 => "CC", 3 => "CCC", 4 => "CD", 5 => "D", 6 => "DC", 7 => "DCC", 8 => "DCCC", 9 => "CM" }
  THOUSANDS = { 1 => "M", 2 => "MM", 3 => "MMM" }

  DECIMALS = { 1 => UNITS, 2 => TENS, 3 => HUNDREDS, 4 => THOUSANDS }

  def to_roman
    self.digits.each.with_index(1).map { |number, place| DECIMALS[place][number] }.reverse.join
  end

end