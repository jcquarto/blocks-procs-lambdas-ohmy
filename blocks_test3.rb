
# using yield runs the passed-in block
# yield outputs the value returned by the block

# (So, you can think of blocks as giving your method an API)

def blockasaurus
	puts "I am a blockasaurus. Grrr!"
	yield
end

blockasaurus { puts "here's some code" } 

