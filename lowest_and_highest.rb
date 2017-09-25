
sorted_rolls = []

5.times do
  dice = Random.rand(1..6)
  sorted_rolls << dice
end

sorted_rolls.sort!

sorted_rolls.each { |rolls| puts "The result of your roll is #{rolls}" }


puts "-"*33
puts "the lowest number is #{sorted_rolls.first}"
puts "the lowest number is #{sorted_rolls.last}"
