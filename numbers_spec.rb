require_relative './numbers'
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'
require 'subtle'

[:input, :output].to_objects {[
  [0,      'zero'],
  [1,      'one'],
  [2,      'two'],
  [3,      'three'],
  [4,      'four'],
  [5,      'five'],
  [6,      'six'],
  [7,      'seven'],
  [8,      'eight'],
  [9,      'nine'],
  [10,     'ten'],
  [11,     'eleven'],
  [12,     'twelve'],
  [13,     'thirteen'],
  [14,     'fourteen'],
  [15,     'fifteen'],
  [16,     'sixteen'],
  [17,     'seventeen'],
  [18,     'eighteen'],
  [19,     'nineteen'],
  [20,     'twenty'],
  [21,     'twenty-one'],
  [22,     'twenty-two'],
  [23,     'twenty-three'],
  [24,     'twenty-four'],
  [25,     'twenty-five'],
  [29,     'twenty-nine'],
  [30,     'thirty'],
  [31,     'thirty-one'],
  [32,     'thirty-two'],
  [39,     'thirty-nine'],
  [40,     'forty'],
  [41,     'forty-one'],
  [42,     'forty-two'],
  [50,     'fifty'],
  [51,     'fifty-one'],
  [60,     'sixty'],
  [61,     'sixty-one'],
  [70,     'seventy'],
  [72,     'seventy-two'],
  [80,     'eighty'],
  [83,     'eighty-three'],
  [90,     'ninety'],
  [97,     'ninety-seven'],
  [100,    'one-hundred'],
  [101,    'one-hundred-one'],
  [157,    'one-hundred-fifty-seven'],
  [200,    'two-hundred'],
  [300,    'three-hundred'],
  [999,    'nine-hundred-ninety-nine'],
  [1000,   'one-thousand'],
  [2000,   'two-thousand'],
  [10000,  'ten-thousand'],
  [11000,  'eleven-thousand'],
  [11111,  'eleven-thousand-one-hundred-eleven'],
  [100000, 'one-hundred-thousand'],
  [100001, 'one-hundred-thousand-one'],
  [100002, 'one-hundred-thousand-two'],
  [110002, 'one-hundred-ten-thousand-two'],
  [110082, 'one-hundred-ten-thousand-eighty-two'],
  [999999, 'nine-hundred-ninety-nine-thousand-nine-hundred-ninety-nine'],
]}.each do |test|
  describe Number do
    it "should convert a number to a word" do
      Number.convert_to_word(test.input).must_equal test.output
    end
  end
end
