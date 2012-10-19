class Person
  attr_accessor :name, :hobbies
  def initialize
  end
end

p1 = Person.new("Barbara", "GeoCaching, Stunt Kites, Go, Bicycles")
p2 = Person.new("Matthias", "GO , Bicycles, Geocaching")
p3 = Person.new("Shorty", "Stunt Kites, Go")
p4 = Person.new("Ruth","Geocaching")


matches_1 = p1.match_hobbies(p2)

matches =Person.matches

puts matches.inspect
