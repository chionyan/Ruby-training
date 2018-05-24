require 'minitest/autorun'
require_relative './deep_freezable'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze
    assert DeepFreezable
  end
end
