require_relative '../chapter05/convert_length'

RSpec.describe 'Conversion Length' do
  describe '#convert_length' do
    it '1m の単位をinch に変換すると、39.37inch になること' do
      expect(convert_length(1, from: :m, to: :in)).to eq 39.37
    end

    it '15inch の単位を m に変換すると、 0.38m になること' do
      expect(convert_length(15, from: :in, to: :m)).to eq 0.38
    end

    it '35000feet の単位を m に変換すると、 10670.73m になること' do
      expect(convert_length(35000, from: :ft, to: :m)).to eq 10670.73
    end
  end
end
