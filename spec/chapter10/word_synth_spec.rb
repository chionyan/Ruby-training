require './chapter10/lib/word_synth'
require './chapter10/lib/effects'

RSpec.describe WordSynth do
  subject(:synth){ WordSynth.new }
  subject { synth.play('Ruby is fun!') }
  
  context 'エフェクトをかけていない場合' do
    it 'エフェクトのかかっていない文字列を返すこと' do
      expect(subject).to eq 'Ruby is fun!'
    end
  end

  context 'エフェクトをかけた場合' do
    context '単一のエフェクトをかけた場合' do
      before { synth.add_effect(Effects.reverse) }

      it '単一のエフェクトがかかった文字列を返すこと' do
        expect(subject).to eq 'ybuR si !nuf'
      end
    end

    context '複数のエフェクトをかけた場合' do
      before do
        synth.add_effect(Effects.echo(2))
        synth.add_effect(Effects.loud(3))
        synth.add_effect(Effects.reverse)
      end

      it '複数のエフェクトがかかった文字列を返すこと' do
        expect(subject).to eq '!!!YYBBUURR !!!SSII !!!!!NNUUFF'
      end
    end
  end
end
