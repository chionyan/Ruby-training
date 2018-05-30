require 'minitest/autorun'
require './chapter10/lib/word_synth'
require './chapter10/lib/effects'

class WordSynthTest < Minitest::Test
  def test_play_without_effects
    synth = WordSynth.new
    assert_equal 'Ruby is fun!', synth.play('Ruby is fun!')
  end
end
