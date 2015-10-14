# Creating a lambda
lambda {}
# Creating a proc
Proc.new {}
# New block
{}

#Naming a lambda
l = lambda() {}
# or
l = ->() {} # Do not allow a space between the rocket and the parentheses!
# Naming a proc
pr = Proc.new {}
# or 
pr = proc {}
# Blocks are not objects and therefore cannot be assigned names
b = {} # This is a hash

# Observe the classes of these lambdas, procs and blocks
p l.class
p pr.class
p b.class

# Showing actual use of lambdas and procs
l = ->(name, age, occupation) { puts "Hello #{name}, I see you are #{age} and work doing #{occupation}"}
l.call("Erik", 21, "Ruby")

pr = proc {|name, age, occupation| puts "Hello #{name}, I see you are #{age} and work doing #{occupation}"}
pr.call("Erik", 21, "Ruby")

# Demonstrate 
def lambda_method
  l = lambda { |a, b| return a+b }
  l.call(1,2)
  return "This will be shown."
end

def proc_method
  pr = proc { |a,b| return a + b }
  pr.call(1,2)
  return "This will not be shown."
end
puts lambda_method
puts proc_method