def roman_numeral num
  thous = (num /1000)
  hunds = (num % 1000 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10)

  roman = 'M' * thous

  if hunds == 9
    roman = roman + 'CM'
  elsif hunds == 5
    roman = roman + 'D'
  else
    if hunds == 4
      roman = roman + 'CD'
    end
  end

  roman = roman + 'C' * hunds

  if tens == 9
    roman = roman + 'XC'
  elsif tens == 5
    roman = roman = 'L'
  else
    if tens == 4
      roman = roman + 'XL'
    end
  end

  roman = roman + 'X' * tens

  if ones == 9
    roman = roman + 'IX'
  elsif ones == 5
    roman = roman + 'V'
  elsif ones == 4
      roman = roman + 'IV'
  else
    if ones <= 3
      roman = roman + 'I' * ones
    end

  end

  puts roman

end

roman_numeral 139