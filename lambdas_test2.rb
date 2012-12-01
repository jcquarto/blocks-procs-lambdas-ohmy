
# Lambdas check the number of parameters passed into the call (Procs don't)

def lambdasaurus( some_code )
	some_code.call( 7, "Dumbo" )
end

def lambda_test2
	my_proc = Proc.new { | x, y | 
		puts " #{x} is a #{x.class}, #{y} is a #{y.class} "
	}

	my_lambda = lambda { | x, y | 
		puts " #{x} is a #{x.class}, #{y} is a #{y.class} "
	}


	lambdasaurus( my_proc )
	lambdasaurus( my_lambda )
end

lambda_test2
