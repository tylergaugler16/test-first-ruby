def translate(what)
vowels=["a","e","i","o","u","y"]
array=what.split(" ")

sentence=""
array.each do |word|


	consanants=0
	(word.length).times do |num|
		if !(vowels.include?(word[num]))then
			consanants+=1
		else
			break
		end
	end


	phoneme="qu"
	
	if word[0..1] == phoneme then
		sentence+=word[2..word.length]+phoneme+"ay"+" "
	elsif word.include?(phoneme)
		pos=0
		(word.length-1).times do |let|
			if word[let,let+1] == phoneme then
				pos=let+2
			end
		end
		break_off=word[0..pos-1]
		sentence=word[pos..word.length]+break_off+"ay "

	elsif(consanants > 0) then
		break_off=word[0..consanants-1]
		sentence+=word[consanants..word.length]+break_off+"ay"+" "
	
	else
		sentence+=word+"ay"+" "
		
	end

	
end #array.each


sentence.strip
end

puts translate("square")