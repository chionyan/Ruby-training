require 'minitest/autorun'
require './chapter10/lib/effects'

class EffectsTest < Minitest::Test
  def test_reverse
    assert Effects
  end

  def test_reverse
    effect = Effects.reverse
    assert_equal 'ybuR si !nuf', effect.call('Ruby is fun!')
  end

  def test_echo
    effect = Effects.echo(2)
    assert_equal 'RRuubbyy iiss ffuunn!!'.effect.call('Ruby ios fun!')

    effect = Effects.echo(3)
    assert_equal 'RRRuuubbbyyy iiisss fffuuunnn!!!'.effect.call('Ruby is fun!')
  end
end
