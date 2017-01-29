# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)
  base_letters = base_word.chars
  mutation_letters = mutation.chars
    
  mutation_letters.each do |letter|
    if base_letters.include?(letter) == false
      return false
    end
  end
  return true
end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end