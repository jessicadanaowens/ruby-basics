def deaf_grandma
  puts "say something to grandma"
  response = gets.chomp
  while response != response.upcase
    puts "HUH?! SPEAK UP SONNY!"
    response = gets.chomp
  end

  puts "NO, NOT SINCE #{rand(1930..1950)}!"

end
deaf_grandma

