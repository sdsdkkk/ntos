class Fixnum
  ONES = {
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine'
  }

  TEENS = {
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen'
  }

  TENTHS = {
    10 => 'ten',
    20 => 'twenty',
    30 => 'thirty',
    40 => 'fourty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety'
  }

  def to_text
    return 'zero' if self == 0
    text(self)
  end

  private

  def text(num)
    if num > 99
      joiner, divider = properties(num)
      str = "#{text(num/divider)} #{joiner}"
      str += " #{text(num%divider)}" if num % divider > 0
      str
    else
      digits_to_text(num)
    end
  end

  def digits_to_text(num)
    if num < 20 && num > 10
      TEENS[num]
    elsif num < 10
      ONES[num]
    else
      ones = num % 10
      str = TENTHS[num - ones]
      str += " #{ONES[ones]}" if ones > 0
      str
    end
  end

  def properties(num)
    case
    when num > 999_999_999
      ["billion", 1_000_000_000]
    when num > 999_999
      ["million", 1_000_000]
    when num > 999
      ["thousand", 1_000]
    when num > 99
      ["hundred", 100]
    end
  end
end