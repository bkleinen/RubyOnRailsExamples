class Apple
  #symbols start with a colon :
  attr_accessor :color
  # Class Variables start with @@
  @@apple_instances = []
  def initialize(color)
    # Instance Variables start with @
    @color =color
    @@apple_instances << self
  end
  def store_forever(value)
    # global constants start with a dollar sign $
    $global =value
  end
  def self.all
    return @@apple_instances
  end
  def use_underscores_rather_than_camel_case
    java_identifier ="CamelCaseExample"
  end
  def to_s
    puts "I'm a #{color} apple."
  end
end

apple1 = Apple.new(:green)
apple2 = Apple.new(:red)
puts Apple.all

apple1.store_forever("AppleTree")
puts "value of a global variable can be accessed from anywhere: #{$global}"

Constant ="Constants start with a capital letter"
Constant +=" and overwriting constants produces a warning."
def Constant
  "method names can start with capital letters, but should not because they can be confused with constants"
end

puts "Constants:"+ Constant
puts "Method Names:" +Constant()