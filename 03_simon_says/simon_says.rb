#write your code here
def echo(something)
  something
end

def shout(something)
  something.upcase
end

def repeat(something, number=2)
  phrase = ""
  number.times do
    phrase += "#{something} "
  end
  phrase.strip!
end

def start_of_word(word, num)
  start = word[0..num-1]
end

def first_word(phrase)
  word = phrase.split(' ')[0]
end

def titleize(title)
  little_words = ['and', 'or', 'over', 'the']
  title = title.split(' ')
  title[0].capitalize!
  title.each do |word|
    if !little_words.include?(word)
      word.capitalize!
    end
  end
  title = title.join(' ')
end
