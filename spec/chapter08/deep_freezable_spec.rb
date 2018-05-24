require './chapter08/bank'
require './chapter08/team'

RSpec.describe DeepFreezable do
  context '引数が配列の場合' do
    it '配列の値が正しいこと' do
      expect(['Japan', 'US', 'India']).to eq Team::COUNTRIES
    end

    it '配列自身が freeze されていること' do
      expect(Team::COUNTRIES.frozen?).to be true
    end

    it '配列の要素が全て freeze されていること' do
      expect(Team::COUNTRIES.all?{ |country| country.frozen? } ).to be true
    end
  end

  context '引数がハッシュの場合' do
    it 'ハッシュの値が正しいこと' do
      expect(
        {'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'}
      ).to eq Bank::CURRENCIES
    end

    it 'ハッシュ自身が freeze されていること' do
      expect(Bank::CURRENCIES.frozen?).to be true
    end

    it 'ハッシュの要素（キーと値）が全て freeze されていること' do
      expect(
        Bank::CURRENCIES.all?{ |key, value| key.frozen? && value.frozen? }
      ).to be true
    end
  end
end
