# Lambdas return to the method that called it when 
# they hit a return
# BUT, Procs will return as soon as they hit a return )

def lambdasaurus(some_code)
	puts "I am a header"
	some_code.call
	puts "I am a footer"
end

def lambda_test4
	puts "starting"
	a_lambda = lambda { return }
	lambdasaurus( a_lambda )
	puts "ending"
end

lambda_test4
