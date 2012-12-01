# Proc sets unused parameters to Nil, 
# whereas Lambda throws ArgumentError

def lambdasaurus( some_code )
	some_code.call( 7, "Dumbo" )
end

def lambda_test3
	my_proc = Proc.new { | x, y, z | 
		puts " #{x} is a #{x.class}, #{y} is a #{y.class} , #{z} is a #{z.class} "
	}

	my_lambda = lambda { | x, y, z| 
		puts " #{x} is a #{x.class}, #{y} is a #{y.class}, #{z} is a #{z.class} "
	}

	lambdasaurus( my_proc )
	lambdasaurus( my_lambda ) # This will throw an error
end

lambda_test3

# conclusion: if you want your Proc to be called 
# with a specific set of parameters, use a Lambda

