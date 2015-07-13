def add(x,y)
	x+y
end

def subtract(x,y)
	x-y
end

def sum(array)
	sum=0
	array.each do |element|
		sum+=element
	end
	sum
end

def power(base,power)
	answer=1
	power.times do
		answer*=base
	end
	answer
end

def multiply(*array)
	array.reduce(:*)

end



def factorial(number)
	answer=1
	(number-1).times do
		answer*=number
		number-=1
		
	end
	answer
end


puts factorial(0)