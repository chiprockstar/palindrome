class Palindrome
  def palindrome?(word)
    word.downcase!
    reverse_word = ""
    original_word = ""
    original_word = word.split("").select { |x| x.ord >= 97 && x.ord <= 122 }.join
    (original_word.length-1).downto(0) { |c| reverse_word << original_word[c] }
    original_word == reverse_word
  end
end
