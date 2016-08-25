#write your code here
def translate(phrase)
  phrase = phrase.split(" ")
  new_phrase = []
  phrase.each do |word|
    new_phrase.push(pig_latinize(word))
  end
  phrase = new_phrase.join(" ")
end

def pig_latinize(word)
  vowels = ['a','e','i','o','u']
  index = 0
  if vowels.include?(word[0])
    word = word + "ay"
  else
    word.length.times do |i|
      if vowels.include?(word[i])
        index = i
        break
      end
      if word[i] == 'q'
        index = i+2
        break
      end
    end
    word = word[index..word.length] + word[0..index-1] + "ay"
  end
  return word
end
