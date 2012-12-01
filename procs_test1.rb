# procs (procedures) --get a handle on the block by explicitly 
# expecting it in the method definition.

def  procasaurus( &block )
	puts "I am a procasaurus."
	puts block.class
	# note the proc must be the last parameter and must start with ampersand
end

procasaurus { puts "here's some code" } 

