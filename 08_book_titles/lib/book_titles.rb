class Book
	@book

	def instaiate()

	end

	def title=(book)
		
		array=book.split(" ")
		sentence=""
		first=true
		restricted_words=["the","a","an","in","of","and"]
		array.each do |word|
			if word==array[0] and first
				sentence+=(word[0].upcase)+(word[1..word.length-1])+" "
				first=false
			elsif restricted_words.include?(word)
				sentence+=(word[0].downcase)+(word[1..word.length-1])+" "
			else
				sentence+=(word[0].upcase)+(word[1..word.length-1])+" "
			end

			
		end
		@book=sentence.strip

	end

	def title
		@book
	end



end

