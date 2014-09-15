def is_vowel?(letter)
  lc = letter.downcase
  if (lc == "a" or lc == "e" or lc == "i" or lc == "o" or lc == "u")
    return true
  end
  false
end

def is_capitalized?(word)
  if word.capitalize == word
    return true
  end
  false
end

def get_punctuation(word)
  res = ""
  arr_word = (word.split("")).reverse!
  arr_word.each do |lt|
    if lt.match(/[-a-zA-Z]/)
      break
    else
      res = lt << res
    end
  end
  res
end

def translate(words)
  array_words = words.split
  array_words.to_enum.with_index(0).each do |w, i|
    capitalized = is_capitalized?(w)
    punctuation = get_punctuation(w)
    prev_letter = ""
    w = w[0..-(1 + punctuation.length)] 
    w.split("").each do |l|   
      if (!is_vowel?(l) || (prev_letter.downcase == "q" && l.downcase == "u"))
        w = w[1..-1] << w[0].downcase
      else
        break
      end
      prev_letter = l
    end
    if capitalized
      array_words[i] = (w << "ay").capitalize << punctuation
    else
      array_words[i] = (w << "ay") << punctuation
    end
  end
  array_words.join(" ")
end

