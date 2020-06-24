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
    # string must begin with capital letter, followed by unknown number of characters with any word character at the end
    false 
  elsif text.match(/^[A-Z].*[[:punct:]]/)
    # string must begin with a capital letter, followed by unknown number of characters with punctuation at the end
    true
  else text.match(/^[A-Z].*\w\z/)
    false
  end
end

def valid_phone_number?(phone)
  if phone.match(/\d{3}.?\d{3}.?\d{4}/)
    true
  end
end
