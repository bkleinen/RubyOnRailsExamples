
array = [3,4,8]
array.each do | n |
  puts n
end

a = (1..100).to_a            # put a range into an array
a.select! { |n| (n % 7) == 0}  # bang (!) changes the array itself!
puts "all numbers divisible by 7: #{a.to_s}"

class String
  def palindrome?
    self == self.reverse
  end
end


["asdf","asdffdsa"].each do  |string|
    puts string + " is a palindrome" if string.palindrome?
end

a ="hallo studiengang imi an der htw".split
a =a.map  { |s|s.reverse}
puts a.to_s