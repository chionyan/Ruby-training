require 'minitest/autorun'
require_relative './convert_hash_syntax'

class ConvertHashSyntaxTest < MiniTest::Test
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
    {
      :name => 'Alice',
      :age=>20,
      :gender  => :female
    }
    TEXT
    new_syntax =<<~TEXT
    {
      name: 'Alice',
      age: 20,
      gender: :female
    }
    TEXT
    assert_equal new_syntax, convert_hash_syntax(old_syntax)
  end
end
