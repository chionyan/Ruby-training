require_relative '../chapter06/convert_hash_syntax'

RSpec.describe 'Convert Hash Syntax' do
  describe '#convert_hash_syntax' do
    it '=> を使ったハッシュ記法から、後ろに : を置くハッシュ記法に変換すること' do
      old_syntax = <<~TEXT
      {
        :name => 'Alice',
        :age=>20,
        :gender  => :female
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
