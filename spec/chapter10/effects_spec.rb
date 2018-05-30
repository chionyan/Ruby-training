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
end
