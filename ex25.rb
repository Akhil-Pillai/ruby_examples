module Ex25
	def Ex25.break_sentence(sentence)
		words = sentence.split()
		return words
	end

	def Ex25.sort_words(words)
		sort_words = words.sort
		return sort_words
	end

	def Ex25.print_first(words)
		return words[0]
	end

	def Ex25.print_last(words)
		return words[-1]
	end
end

#Breaking up the sentence into words
words = Ex25.break_sentence("My name is Akhil Pillai")
puts(words, "\n")

#Sorting the broken up words
sorted_words = Ex25.sort_words(words)
puts(sorted_words, "\n")

#Print the first word of the original sentence
first_word = Ex25.print_first(words)
puts(first_word)

#Print the last word of the original sentence
last_word = Ex25.print_last(words)
puts(last_word)



