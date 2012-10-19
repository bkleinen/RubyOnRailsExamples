#Procs allow you to store code as objects.
my_proc =Proc.new {|a| puts "Parameter is #{a}"}
my_proc.call(99)

#procs can be provided to methods as the last argument
def take_block(x,&provided_block)
  puts provided_block.class
  x.times {|i| provided_block [i,i*i]}   #other syntax for call
end


take_block(3) { |n,s| puts "#{n} squared is #{s}"}

# they can be stored in variables and passed to methods
# expecting a block
my_proc = proc{|n| print n, "... "}   # yet another syntax
(1..3).each(&my_proc)
puts
('a'..'h').each(&my_proc)
puts

#procs are not blocks, but can be converted to each other with &.


# yield calls a provided block.
def method_with_block
  yield
end

# and another example for providing a block to a method.
result = method_with_block { 1 + 2 }

puts "result from method_with_block: #{result}"

#you can also assign the provided block to a variable.
def method_with_block_parameter &provided_block_proc
  puts provided_block_proc.class
  provided_block_proc.call("called from method")
  yield "called from method with yield"
end

method_with_block_parameter { |s| puts "### #{s} ###"}

#html templates will look somehow like this:
def html
  #this is a way to create longer strings in place easily.
  x = <<DELIM
<html>
<body>
#{yield}
</body>
</html>
DELIM
end

puts html { "put your content here" }

content = "something calculated".upcase

# Procs can also be explicitly created and have access to the variables in their environment.
content_proc = Proc.new {
  "and it might contain #{content}."
}
puts html &content_proc

#or:
content_proc = proc {
  "and it might contain #{content}."
}

puts html &content_proc


# in fact, procs are closures!
# that is, they preserve the variable bindings from the place where they are defined.


   class X
     @@n = 0

def self.create_counter
  proc { @@n+=1 }
end
     end

first_counter =X.create_counter
puts "counter 1: #{first_counter.call}"
puts "counter 1: #{first_counter.call}"

second_counter =X.create_counter
puts "counter 2: #{second_counter.call}"
puts "counter 1: #{first_counter.call}"
   xx

class ProcContainer
  attr_accessor :increment
  def initialize
    @increment = 2
  end
  def create_counter
    @increment =3
    n = 0;
    return proc { n +=@increment}
  end
  def increment_changer
    return proc { |new_increment| @increment=new_increment}
  end
end

p "ProcContainer"
c =ProcContainer.new
counter =c.create_counter
p counter.call
p counter.call
c.increment=2
p counter.call

c.increment_changer.call(8)
puts "after setting increment to 8:"
p counter.call



