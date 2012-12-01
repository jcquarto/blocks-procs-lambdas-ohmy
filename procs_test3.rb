# comments on both Block and Proc:
#
# 1: we enjoy Ruby-ish syntax when passing code around, 
#    so if we only need to pass a single Proc, we can 
#    use Blocks . Reads easy.
#    (very common when using iterators -- 
#        and SUPER common in the Rails core )
#
# 2: if we want to save a piece of code in a variable 
#    for reuse -- then use an explicit Proc object
#
# 3: if we want to pass multiple blocks of code 
#     to a method and invoke, then use an explicit Proc object

def procasaurus( p1, p2, p3 )
	puts p1.call
	puts p2.call
	puts p3.call
end

class Cat
	def speak
		"meow! Feed me Tuna!"
	end
end

def proc_test3
	proc_a = Proc.new { print "I am Proc A!" }
	proc_b = Proc.new { x=3; y=2; print x+y }
	proc_c = Proc.new { cato = Cat.new; cato.speak }

	procasaurus( proc_a, proc_b, proc_c )
end

proc_test3
