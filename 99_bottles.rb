#Write a program that prints out verses of "99 bottles of beer on the wall",
# according to the following rules: * The user must type "sing 88", where 88
# is any positive number * If the user runs the program without typing anything,
# print "I need to know how many bottles to sing!" * If the user runs the
# program and specifies a verse with "sing <number>", print all the lines from
# the song starting at that verse * If the user types anything but "sing <number>",
# show an error and exit

puts "Let's sing 99 bottles of beer on the wall!"
puts "Where should we start? Please type 'sing' + "
puts "the number of bottles of beer on the wall"
puts "The number must be greater than 0 and less than 100."
puts "For example, type 'sing 88'"

response = gets.chomp

beer = (response.split(' '))[1].to_i

puts beer

def sing_song(beer)

  while beer >= 1
    puts beer.to_s + " bottles of beers on the wall!!" + beer.to_s
    puts " bottles of beer!!"
    puts "Take one down and pass it around"

    beer -= 1
    puts beer.to_s + "bottles of beer on the wall!!"
  end

  if beer >= 1
  sing_song(beer)
  else
    puts "No bottles of beer on the wall!!"
    puts "No bottles of beer!!"
    puts "I don't feel so well...blah!!"
  end

end

sing_song(beer)


