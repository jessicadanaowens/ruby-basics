require 'date'

puts "What is your name?"

name = gets.chomp.capitalize

filename = 'birthday_data.csv'

txt = File.read filename

birthday_info = txt.split(',')

i = 0

for each in birthday_info
  if name == each
    b = birthday_info[i+1]
    year = b[0..3]
    age = Time.new.year - year.to_i
    puts name + " " + b + " " + age.to_s
  end

  i += 1

end

