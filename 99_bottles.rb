puts "Let's sing 99 bottles of beer on the wall!"
puts "Where should we start? Please type 'sing' + "
puts "the number of bottles of beer on the wall"
puts "The number must be greater than 0 and less than 100."
puts "For example, type 'sing 88'"

response = gets.chomp

beer = (response.split(' '))[1].to_i

(2..beer).to_a.reverse.each do |num|

  puts num.to_s + " bottles of beers on the wall!!" + num.to_s
  puts " bottles of beer!!"
  puts "Take one down and pass it around"


  puts (num - 1).to_s + "bottles of beer on the wall!!"

end

puts "1 bottle of beer ont the wall, one bottle of heer."
puts "take one down and pass it around"
puts "no bottles of beer on the wall."


