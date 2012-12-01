# so Blocks, Procs, and Lambdas are all Closures -- 
# when the block of code is executed (which may not be right away!),
# they hold the state of any variables *at the time of creation* of that block 
# 
# incredibly powerful feature!
# I love you, Ruby!

def closureasaurus( n )
	lambda {|val| val*n }
end

def closure_test1
	# using explicit values
	twice = closureasaurus(2)
	thrice = closureasaurus(3)

	puts twice.call(5)
	puts thrice.call(5)
end

closure_test1
