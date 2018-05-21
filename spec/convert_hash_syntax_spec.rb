require_relative '../chapter06/convert_hash_syntax'

RSpec.describe 'Convert Hash Syntax' do
  describe '#convert_hash_syntax' do
    it '古い記法のHash文字列を変換すると、新しい記法のHash文字列になること' do
      old_syntax = <<~TEXT
      {
        :name=> 'Alice',
        :age=>20,
        :gender => :female
      }
      TEXT
      new_syntax = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
      TEXT
      expect(convert_hash_syntax(old_syntax)).to eq new_syntax
    end
  end
end
