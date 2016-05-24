module Ex26
	def Ex26.break_words(stuff)
		words=stuff.split(' ')
		return words
	end

	def Ex26.sort_words(words)
		return words.sort
	end

#FLAG 1
	def Ex26.print_first_word(words)
		word=words.shift
		puts word
	end

#FLAG 2
	def Ex26.print_last_word(words)
		word=words.pop
		puts word
	end

#FLAG 3
	def Ex26.sort_sentence(sentence)
		word=Ex26.break_words(sentence)
		return Ex26.sort_words(word)
	end

#FLAG 3
	def Ex26.print_first_last(sentence)
		word=Ex26.break_words(sentence)
		Ex26.print_first_word(word)
		Ex26.print_last_word(word)
	end

#FLAG 4
	def Ex26.print_first_last_sorted(sentence)
		word=Ex26.sort_sentence(sentence)
		Ex26.print_first_word(word)		
		Ex26.print_last_word(word)
	end

	puts "Let's practice something"
	puts "You'd need to know about escapes with \\ that do \n newlines and \t tabs"

	poem = <<END
	\tThe lovely world
	with logic so fiirmly planted
	cannot discern \n the needs of love
	nor comprehend passion from intuition
	and requires an explanation
	\n\twhere there is none.
END

	puts "------------------------------"
	puts poem
	puts "------------------------------"

	five = 10 + -2 + 3 + -6
	puts "This should be five: #{five}"
	
	def Ex26.secret_formula(started)
		jelly_beans=started * 500
		jars=jelly_beans/1000
		crate=jars/100
		return jelly_beans,jars,crate
	end

	start_point=10000
	beans, jars, crates = Ex26.secret_formula(start_point)

	puts "With a starting point of: #{start_point}"
	puts "We'd have beans #{beans}, jars #{jars}, crates #{crates}."
	start_point = start_point/10

	sentence = "All good things come to those who wait."

	words = Ex26.break_words(sentence)
	sorted_words=Ex26.sort_words(words)

	Ex26.print_first_word(words)
	Ex26.print_last_word(words)

	Ex26.print_first_word(sorted_words)
	Ex26.print_last_word(sorted_words)

	sorted_words=Ex26.sort_sentence(sentence)

	Ex26.print_first_last(sentence)
	Ex26.print_first_last_sorted(sentence)
end