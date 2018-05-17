require_relative '../chapter05/convert_length'

RSpec.describe 'Conversion Length' do
  describe '#convert_length' do
    it '(1, from: :m, to: :in) -> 39.37' do
      expect(convert_length(1, from: :m, to: :in)).to eq 39.37
    end

    it '(15, from: :in, to: :m) -> 0.38' do
      expect(convert_length(15, from: :in, to: :m)).to eq 0.38
    end

    it '(35000, from: :ft, to: :m) -> 10670.73' do
      expect(convert_length(35000, from: :ft, to: :m)).to eq 10670.73
    end
  end
end
