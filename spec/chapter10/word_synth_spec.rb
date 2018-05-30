require './chapter10/lib/word_synth'
require './chapter10/lib/effects'

RSpec.describe WordSynth do
  subject(:synth){ WordSynth.new }
  subject { synth.play('Ruby is fun!') }
  
  context 'エフェクトをかけていない場合' do
    it '変化していないの文字列を返すこと' do
      expect(subject).to eq 'Ruby is fun!'
    end
  end
end
