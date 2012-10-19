
# Exercise: write a proc that provides content for the following html template:
def template
template =<<DELIM
<html>
<head>
#{yield :head}
</head>
<body>
#{yield}
<hr>
<p>
#{yield :footer}
</p>
</body>
</html>
DELIM
return template
end


content_definitions = proc { 
  # put your definition here
}

puts template &content_definitions



# procs are closures!
# that is, they preserve the variable bindings from the place where they are defined.

#extend create_counter such that it returns two procs, one for increasing, one for decreasing the counter.
def create_counter
  n = 0
  proc { n+=1 }
end

first_counter =create_counter
puts "first_counter.call #{first_counter.call}"
puts "first_counter.call #{first_counter.call}"

second_counter =create_counter
puts "second_counter.call #{second_counter.call}"
puts "first_counter.call #{first_counter.call}"
puts "second_counter.call #{second_counter.call}"
puts "first_counter.call #{first_counter.call}"

