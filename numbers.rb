module Number

  def self.convert_to_word number
    return 'zero' if number == 0
    words = gather_the_words_from number
    build_a_nice_looking_string_from words
  end

  private

  BIG_NUMBERS = { 1000 => 'thousand', 100 => 'hundred' }
  TENS = {
           90 => 'ninety',
           80 => 'eighty',
           70 => 'seventy',
           60 => 'sixty',
           50 => 'fifty',
           40 => 'forty',
           30 => 'thirty',
           20 => 'twenty'
         }
   SINGLES = [nil, 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten',
                   'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty']


  def self.build_a_nice_looking_string_from words
    words.flatten.select { |x| x.to_s != '' }.join('-')
  end

  def self.gather_the_words_from number, divider = 1000
    words = [] << if number >= divider
                    original_number = number
                    number -= number / divider * divider
                    big_number_to_words original_number, divider
                  end
    words << if divider > 100
               gather_the_words_from number, divider / 10
             else
               compute_tens number
             end
  end

  def self.big_number_to_words number, divider
    [gather_the_words_from(number / divider, divider / 10),
     BIG_NUMBERS[divider]]
  end

  def self.compute_tens number
    words = [] << if number >= 20
                    tens_only = number / 10 * 10
                     number -= tens_only
                     TENS[tens_only]
                  end
    words << compute_singles(number)
  end

  def self.compute_singles input
    SINGLES[input % 20]
  end
end
