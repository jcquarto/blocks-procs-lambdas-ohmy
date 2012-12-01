# so, procs behave more like blocks of code that get 
# dropped in and executed, whereas lambdas act more 
# like methods
#
# this is also why lambdas are strict with parameter checking 
#    -- because methods do the same thing!

def lambdasaurus(some_code)
	puts "I am a header"
	some_code.call
	puts "I am a footer"
end

def lambda_test5
	puts "starting"
	a_proc = Proc.new { return }
	lambdasaurus( a_proc )
	puts "ending"
end

lambda_test5

