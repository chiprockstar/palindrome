require 'minitest/autorun'
require_relative 'palindrome'

class PalindromeTest < Minitest::Test


  def test_palindrome
    bool = Palindrome.new.palindrome?("po'p")
    assert_equal true, bool
  end

  def test_another_palindrome
    bool = Palindrome.new.palindrome?("Was it a car or a cat I saw?")
    assert_equal true, bool
  end

  def test_not_palindrome
    bool = Palindrome.new.palindrome?("po'px")
    assert_equal false, bool
  end

end
