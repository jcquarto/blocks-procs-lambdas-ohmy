# big difference between Block and Proc is that Proc 
# can be passed around as an explicit variable

def procasaurus(aProc)
	puts aProc.call
end

def proc_test2
	my_proc = Proc.new { puts "I am a Proc! Do Not Fear Me!" }
	procasaurus ( my_proc )
end

proc_test2
