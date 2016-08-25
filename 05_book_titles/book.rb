class Book
# write your code here
  @@little_words = ['and', 'or', 'in', 'of', 'the', 'a', 'an']
  attr_accessor :title

  def title=(str)
    str = str.split(" ")
    str[0].capitalize!
    str.each do |word|
      if !@@little_words.include?(word)
        word.capitalize!
      end
    end
    @title = str.join(" ")
  end
end
