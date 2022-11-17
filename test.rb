reference_sentence = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis lacus non felis tincidunt ornare at ac odio. Praesent porta."
no_plagiarism      = "I'm a test sentence with no words in common with the reference sentence!"
some_plagiarism    = "I'm a test sentence with consectetur adipiscing elit words in common with the reference sentence, tincidunt ornare at ac odio!"
full_plagiarism    = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis lacus non felis tincidunt ornare at ac odio. Praesent porta."

def make_sets(words, dup)
  sets = []
  start = 0
  until dup > words.size
    sets << words[start..dup-1]
    start += 1
    dup += 1
  end
  sets
end

def compare(one, two, dup)
  # Divide text into array of words
  one_words = one.split(' ')
  two_words = two.split(' ')
  # Create overlapping arrays of x words for whole text
  one_sets = make_sets(one_words, dup)
  two_sets = make_sets(two_words, dup)
  # Check for matches
  matches = []
  two_sets.each do |two_set|
    one_sets.each do |one_set|
      matches << two_set if two_set == one_set
    end
  end
  matches
  # When a match is found, check for match in following array and so on until no match, to find length of match
end

p compare(reference_sentence, some_plagiarism, 10)
