
sorted_rolls = []

10.times do
  dice = Random.rand(1..6)
  sorted_rolls << dice
end

sorted_rolls.sort!

sorted_rolls.each { |rolls| puts "The result of your roll is #{rolls}" }
