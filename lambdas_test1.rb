# kinda looks like a proc!?!

def lambdasaurus( aLambda )
	aLambda.call
end

def lambda_test1
	my_lambda = lambda { puts "I am a Lambda! Where's the Mint Jelly?" }
	lambdasaurus ( my_lambda )
end

lambda_test1
