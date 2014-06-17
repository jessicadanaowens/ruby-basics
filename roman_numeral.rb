def roman_numeral number

  roman = ''
  roman = roman + 'M' * (number / 1000)

  if number%1000 >= 900
    roman = roman + 'CM'
  else
    roman = roman + 'D' * (number%1000/500)
  end

  if number % 500 >= 400
    roman = roman + 'CD'
  else
    roman = roman + 'C' * (number%500/100)
  end

  if number % 100 >= 90
    roman = roman + 'XC'
  elsif number >= 50
    roman = roman + 'L'
  else
    if number % 100 >= 40
      roman = roman + 'XL'
    end
  end

  if number % 50 >= 10
    roman = roman + 'X' * (number%50/10)
  end

  if number % 10 == 9
    roman = roman + 'IX'
  elsif number % 10 >= 5
    roman = roman + 'V' * (number%10/5)
  elsif number % 10 == 4
      roman = roman + 'IV'
  else
    if number % 10 < 4
      roman = roman + 'I' * (number%10)
    end
  end

  puts roman

end

roman_numeral 1900
