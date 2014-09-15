def echo(words)
  words
end

def shout(words)
  words.upcase
end

def repeat(words, vezes=1)
  res = words + " " + words
  (vezes-2).times {res = res + " " + words}
  res
end

def start_of_word(words, position=1)
  words[0..position-1]
end

def first_word(words)
  words.split[0]
end

def titleize(words)
  word_array = words.split
  word_array.last.capitalize!
 
  res = word_array.first.capitalize
  word_array.reverse!
  word_array.pop
  word_array.reverse!
  word_array.each do |w|
    if w.length < 5
      res = res + " " + w
    else
      res = res + " " + w.capitalize
    end
  end
  res
end

