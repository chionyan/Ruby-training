require './chapter08/bank'
require './chapter08/team'

RSpec.describe DeepFreezable do
  it '配列の値が正しいこと' do
    expect(['Japan', 'US', 'India']).to eq Team::COUNTRIES
  end
  
  it '配列自身がfreezeされていること' do
    expect(Team::COUNTRIES.frozen?).to be true
  end

  it '配列の要素が全てfreezeされていること' do
    expect(Team::COUNTRIES.all?{ |country| country.frozen? } ).to be true
  end
end
