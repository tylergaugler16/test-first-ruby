def echo(what)
	what
end

def shout(what)
	what.upcase
end

def repeat(what,amount=2)
	
	sentence=what
	(amount-1).times do 
		sentence+=" "+what
	end
	sentence
end

def start_of_word(what,start=1)
	if start==1 then 
		what[start-1]
	else
		what[0..start-1]
	end
end

def first_word (what)
	sentence=what.split(" ").to_a
	sentence[0]
end

def titleize(what)
	array=what.split(" ")
	sentence=""
	little_words = ['the','and','is','a','an','over','in','on','of','or']
	first=true
	array.each do |word|
		if first then
			sentence+= word[0].upcase!+word[1..word.length]+" "
			first=false
		elsif !(little_words.include?(word)) then
			
			sentence+= word[0].upcase!+word[1..word.length]+" "
		else
			sentence+=word[0].downcase+word[1..word.length]+" "
		end

	end

	 sentence.strip
end



# puts titleize("jaws")
# puts titleize("david copperfield")
# puts titleize("war and peace")
puts titleize("the bridge over the river kwai")


