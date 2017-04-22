def mirror(integers)
  len = integers.length - 1
  integers.length.times do
    integers << integers[len]
    len -= 1
  end
  return integers
end

list = [1, 3, 2, 7]

puts "#{mirror(list)}"
