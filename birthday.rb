require 'date'
require 'csv'

puts "What is your name?"

name = gets.chomp.capitalize

birthday_open = CSV.read('birthday_data.csv')
# puts birthday_open[1]

birthday_open.each do |item|
  if item.include? name
    name_birthday = item[0..2]
    #extract the birthday year from item
    birthday = item[2].to_i
    age = Time.new.year.to_i - birthday
    puts "your last name, first name, and birthday are: " + name_birthday.to_s
    puts "your age is: " + age.to_s
  end
end



