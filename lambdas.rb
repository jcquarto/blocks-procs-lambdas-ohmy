# kinda looks like a proc!?!

def lambdasaurus( aLambda )
	aLambda.call
end

def lambda_test1
	my_lambda = lambda { puts "I am a Lambda! Where's the Mint Jelly?" }
	lambdasaurus ( my_lambda )
end

# Lambdas check the number of parameters passed into the call (Procs don't)

def lambdasaurus2( some_code )
	some_code.call( 7, "Dumbo" )
end

def lambda_test2
	my_proc = Proc.new { | x, y | puts " #{x} is a #{x.class}, #{y} is a #{y.class} "}
	my_lambda = lambda { | x, y | puts " #{x} is a #{x.class}, #{y} is a #{y.class} "}

	lambdasaurus2( my_proc )
	lambdasaurus2( my_lambda )
end

def lambda_test3
	# Proc sets unused parameters to Nil, whereas Lambda throws ArgumentError
	my_proc = Proc.new { | x, y, z | puts " #{x} is a #{x.class}, #{y} is a #{y.class} , #{z} is a #{z.class} "}
	my_lambda = lambda { | x, y, z| puts " #{x} is a #{x.class}, #{y} is a #{y.class}, #{z} is a #{z.class} "}

	lambdasaurus2( my_proc )
	lambdasaurus2( my_lambda )
end

# conclusion: if you want your Proc to be called with a specific set of parameters, use a Lambda

############################

# Lambdas return to the method that called it when they hit a return
# (but Procs will return as soon as they hit a return )

def lambdasaurus4(some_code)
	puts "i am a header"
	some_code.call
	puts "I am a footer"
end

def lambda_test4
	puts "starting"
	a_lambda = lambda { return }
	lambdasaurus4( a_lambda )
	puts "ending"
end

def lambda_test5
	puts "starting"
	a_proc = Proc.new { return }
	lambdasaurus4( a_proc )
	puts "ending"
end

# so, procs behave more like blocks of code that get dropped in and executed, whereas lambdas act more like methods
#  this is also why lambdas are strict with parameter checking -- because methods do the same thing