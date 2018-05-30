require './chapter10/lib/effects'

RSpec.describe Effects do
  it 'Effects が参照できること' do
    expect(Effects).to be_truthy
  end

  context 'リバースエフェクトをかけた場合' do
    let(:effect){ Effects.reverse }

    it '各単語を逆順にすること' do
      expect(effect.call('Ruby is fun!')).to eq 'ybuR si !nuf'
    end
  end

  context 'エコーエフェクトをかけた場合' do
    let(:effect){ Effects.echo(rate) }

    context '2回かけた場合' do
      let(:rate){ 2 }

      it '2回ずつ各文字を繰り返すこと' do
        expect(effect.call('Ruby is fun!')).to eq 'RRuubbyy iiss ffuunn!!'
      end
    end

    context '3回かけた場合' do
      let(:rate){ 3 }

      it '3回ずつ各文字を繰り返すこと' do
        expect(effect.call('Ruby is fun!')).to eq 'RRRuuubbbyyy iiisss fffuuunnn!!!'
      end
    end
  end

  context 'ラウドエフェクトをかけた場合' do
    let(:effect){ Effects.loud(level) }

    context '2回かけた場合' do
      let(:level){ 2 }

      it '全て大文字に変換し、各単語の末尾に2回"!"をつけること' do
        expect(effect.call('Ruby is fun!')).to eq 'RUBY!! IS!! FUN!!!'
      end
    end

    context '3回かけた場合' do
      let(:level){ 3 }

      it '全て大文字に変換し、各単語の末尾に3回"!"をつけること' do
        expect(effect.call('Ruby is fun!')).to eq 'RUBY!!! IS!!! FUN!!!!'
      end
    end
  end
end
