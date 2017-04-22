def switchPairs(problem_array)
  iteration = problem_array.length / 2
  holder_value = ""
  count = 0
  iteration.times do
    holder_value = problem_array[count]
    problem_array[count] = problem_array[count + 1]
    problem_array[count + 1] = holder_value
    count += 2
  end
  return problem_array
end

list = ["four", "score", "and", "seven", "years", "ago"]
list2 = ["to", "be", "or", "not", "to", "be", "hamlet"]

puts "#{switchPairs(list)}"
puts "#{switchPairs(list2)}"
