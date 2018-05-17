require_relative '../chapter05/convert_length'

RSpec.describe 'Conversion Length' do
  describe '#convert_length' do
    it '(1, :m, :in) -> 39.37' do
      expect(convert_length(1, :m, :in)).to eq 39.37
    end

    it '(15, :in, :m) -> 0.38' do
      expect(convert_length(15, :in, :m)).to eq 0.38
    end

    it '(35000, :ft, :m) -> 10670.73' do
      expect(convert_length(35000, :ft, :m)).to eq 10670.73
    end
  end
end
