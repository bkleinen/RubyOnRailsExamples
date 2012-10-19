
def multi_args(*x)
  puts x.inspect
end
def multi_args2(a,b,*x)
  puts a.inspect
  puts b.inspect
  puts x.inspect
end

multi_args(1,2,3)
multi_args2(1,2,3,4,5)


