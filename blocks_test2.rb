# you can pass code even if the method doesn't expect it! 
# (but it won't run it)

def blockasaurus
	puts "I am a blockasaurus. Grrr!"
end

blockasaurus { puts "here's some code" } 

