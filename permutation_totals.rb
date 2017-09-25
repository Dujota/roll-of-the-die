# Write a program that goes through all possible permutations of two dice rolling.

# tried with just iteration of values 1-6 for two dice and printing both out

(1..6).each { |roll1|
  (1..6).each { |roll2|
    puts "Dice Roll: #{roll1}, #{roll2}  Total: #{roll1 + roll2}"
  }
}


# from searching on google got an array solution and was able to put this together with
# the repeated_permutation examples in ruby-docs + my searching which let me understand to use join

dice_rolls = *(1..6)

dice_rolls.repeated_permutation(2) { |rolls| puts rolls.join(' ') }

# was thinkning of storing into variable and then converting to array, and using the indexies to pull the variable
#into the new string, which seems complicated?????

# will ask for help to make it work :)
