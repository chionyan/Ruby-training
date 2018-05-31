require 'minitest/autorun'
require './chapter10/lib/word_synth'
require './chapter10/lib/effects'

class WordSynthTest < Minitest::Test
  def setup
    @synth = WordSynth.new
  end

  def test_play_without_effects
    assert_equal 'Ruby is fun!', @synth.play('Ruby is fun!')
  end

  def test_play_with_reverse
    @synth.add_effect(Effects.reverse)

    assert_equal 'ybuR si !nuf', @synth.play('Ruby is fun!')
  end

  def test_play_with_many_effects
    @synth.add_effect(Effects.echo(2))
    @synth.add_effect(Effects.loud(3))
    @synth.add_effect(Effects.reverse)

    assert_equal '!!!YYBBUURR !!!SSII !!!!!NNUUFF', @synth.play('Ruby is fun!')
  end
end
