require './chapter10/lib/word_synth'
require './chapter10/lib/effects'

RSpec.describe WordSynth do
  it 'WordSynth が参照できること' do
    expect(WordSynth).to be_truthy
  end

  it 'Effects が参照できること' do
    expect(Effects).to be_truthy
  end
end
