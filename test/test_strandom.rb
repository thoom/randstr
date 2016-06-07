require 'minitest/autorun'
require_relative '../lib/strandom.rb'

class TestStrandom < Minitest::Test
  def test_alphabetic
    str = Thoom::Strandom.alphabetic(10)
    assert_equal 10, str.length
    assert_match /^[[:alpha:]]+$/i, str
  end

  def test_alphanumeric
    str = Thoom::Strandom.alphanumeric(10)
    assert_equal 10, str.length
    assert_match /^[[:alnum:]]+$/i, str
  end

  def test_custom_simple
    str = Thoom::Strandom.custom(len: 10, values: %w(a b c))
    assert_equal 10, str.length
    assert_match /^[abc]+$/, str

    str = Thoom::Strandom.custom(len: 16, values: %i(1 2 3))
    assert_equal 16, str.length
    assert_match /^[123]+$/, str
  end

  def test_custom_advanced
    str = Thoom::Strandom.custom(len: 10, values: %w(ab cd ef))
    assert_equal 20, str.length
    assert_match /^(ab|cd|ef)+$/, str
  end

  def test_hex
    str = Thoom::Strandom.hex(10)
    assert_equal 10, str.length
    assert_match /^\h+$/, str
  end

  def test_numeric
    str = Thoom::Strandom.numeric(10)
    assert_equal 10, str.length
    assert_match /^\d+$/, str
  end

  def test_lower
    str = Thoom::Strandom.lower_alphabetic(10)
    assert_equal 10, str.length
    assert_match /^[[:lower:]]+$/, str
  end

  def test_lowernumeric
    str = Thoom::Strandom.lower_alphanumeric(10)
    assert_equal 10, str.length
    assert_match /^[a-z0-9]+$/, str
  end

  def test_upper
    str = Thoom::Strandom.upper_alphabetic(10)
    assert_equal 10, str.length
    assert_match /^[[:upper:]]+$/, str
  end

  def test_uppernumeric
    str = Thoom::Strandom.upper_alphanumeric(10)
    assert_equal 10, str.length
    assert_match /^[A-Z0-9]+$/, str
  end

  def test_uuid
    str = Thoom::Strandom.uuid
    assert_equal 36, str.length
    assert_match /^\h{8}-\h{4}-4\h{3}-[89AB]\h{3}-\h{12}$/i, str
  end
end
