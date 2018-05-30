require 'minitest/autorun'
require './chapter10/lib/word_synth'
require './chapter10/lib/effects'

class WordSynthTest < Minitest::Test
  def test_play
    assert WordSynth
    assert Effects
  end
end
