# so Blocks, Procs, and Lambdas are all Closures -- 
# when the block of code is executed (which may not be right away!),
# they hold the state of any variables *at the time of creation* of that block 
# 
# incredibly powerful feature!
# I love you, Ruby!

def closureasaurus( n )
	lambda {|val| val*n }
end

def closure_test2
	# hmm, must've been passed by value at time of creation!
	# otherwise the calls would have used the value 17
	num = 2
	twice = closureasaurus(num)
	num = 3
	thrice = closureasaurus(num)
	num = 17

	puts twice.call(5)
	puts thrice.call(5)
end

closure_test2