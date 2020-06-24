def starts_with_a_vowel?(word)
  if word.match(/\b[aeiou]/i)
    # searches for word boundary followed by any vowel, /i includes upper- and lowercase
    true
  else !word.match(/\b[aeiou]/i)
    # searches for words that start with anything that's not aeiou
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\S{0,}\wing/)
  # searches for word boundary followed by any number of non-whitespace characters followed by -ing
end

def words_five_letters_long(text)
  text.scan(/\b[a-z]{5}\b/)
  # searches for word boundary followed by five letters followed by a word boundary
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/^[A-Z].*\w\z/)
    false 
  elsif text.match(/^[A-Z].*[[:punct:]]/)
    true
  else text.match(/^[A-Z].*\w\z/)
    false
  end
end

def valid_phone_number?(phone)
  if phone.match(/\d{3}.?\d{3}.?\d{4}\D/)
    true
  end
end
