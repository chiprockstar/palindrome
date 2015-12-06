class Palindrome
  def palindrome?(word)
    word.downcase!
    reverse_word = ""
    original_word_stripped = ""
    a = word.length
    b = 0
    while a > 0
      a -= 1
      original_word_stripped << word[b] if word[b].ord >= 97 && word[b].ord <= 122
      reverse_word << word[a]           if word[a].ord >= 97 && word[a].ord <= 122
      b += 1
    end
    original_word_stripped == reverse_word
  end
end
