# reverse_each_word.rb
# http://rubeque.com/problems/reverse-each-word

# Write a method that takes a sentence and returns it with each word reversed in place.
# A String has many methods that can be called on it:
# http://www.ruby-doc.org/core-1.9.3/String.html


def reverse_each_word(sentence)
  output = []
  sentence.split(' ').each do |word|
    output << word.reverse
  end
  p output.join(' ')
end

def reverse_each_word_alternative(sentence)
  p sentence.reverse.split.reverse.join(" ")
end

# p is a shortcut for puts

# reverse_each_word("Hello there, and how are you?")
#=> "olleH ,ereht dna woh era ?uoy"

reverse_each_word("Hello there, and how are you?")
reverse_each_word_alternative("Hello there, and how are you?")