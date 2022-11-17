require 'bundler/setup'
Bundler.require(:default)

# TODO: Do your magic 🧙‍♂️
reference_sentence = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis lacus non felis tincidunt ornare at ac odio. Praesent porta."
no_plagiarism      = "I'm a test sentence with no words in common with the reference sentence!"
some_plagiarism    = "I'm a test sentence with consectetur adipiscing elit words in common with the reference sentence, tincidunt ornare at ac odio!"
full_plagiarism    = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis lacus non felis tincidunt ornare at ac odio. Praesent porta."

PLAGIARISM_THRESHOLD = 0.5

def assess_plagiarism(reference, assessed)
  reference_words = reference.split(' ')
  assessed_words  = assessed.split(' ')

  uniq_words = (assessed_words - reference_words)
  average_words_number = (reference_words.count + assessed_words.count).fdiv(2)

  uniq_words_rate = uniq_words.count == assessed_words.count ? 1 : uniq_words.count.fdiv(average_words_number)

  plagiarism_confirmed = uniq_words_rate <= PLAGIARISM_THRESHOLD

  return {
    uniq_words:           uniq_words,
    uniq_words_rate:      uniq_words_rate,
    plagiarism_confirmed: plagiarism_confirmed
  }
end

ap no_plagiarism_result   = assess_plagiarism(reference_sentence, no_plagiarism)
ap some_plagiarism_result = assess_plagiarism(reference_sentence, some_plagiarism)
ap full_plagiarism_result = assess_plagiarism(reference_sentence, full_plagiarism)
