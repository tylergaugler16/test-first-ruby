def reverser
	array=yield.split(" ")
	sentence=""
	array.each do |word|
		sentence+=word.reverse+" "
	end
	sentence.strip	
end

def adder(n=1)
	yield+n
end

def repeater(n=1)
	n.times {yield}
end

