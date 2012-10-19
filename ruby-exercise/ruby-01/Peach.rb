class Peach
  def make_it_green
    @color = :green
  end
end

p = Peach.new
puts "Instance variables: "+ p.instance_variables.to_s
p.make_it_green
puts "Instance variables: "+ p.instance_variables.to_s

