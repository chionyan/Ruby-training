require './chapter09/regexp_checker'

RSpec.describe RegexpChecker do
  before do
    @regexp_checker = RegexpChecker.new
    allow(@regexp_checker).to receive(:input_text).and_return(text)
    allow(@regexp_checker).to receive(:input_pattern).and_return(pattern)
  end

  context 'テキストが正規表現にマッチする場合' do
    let(:text){ '123-456-789' }
    let(:pattern){ '[1-6]+' }
    it '"Matched: "に続いて、全てのマッチした文字列が表示されること' do
      expect{ @regexp_checker.run }.to output("Matched: 123,456\n").to_stdout
    end
  end

  context 'テキストが正規表現にマッチしない場合' do
    let(:text){ 'abc-def-hig' }
    let(:pattern){ '[1-6]+' }
    it '"Nothing matched."が出力されること' do
      expect{ @regexp_checker.run }.to output("Nothing matched.\n").to_stdout
    end
  end

  context '正規表現として無効な文字列が入力された場合' do
    let(:text){ '123-456-789' }
    let(:pattern){ '[1-6+' }
    it 'エラーが発生すること' do
      allow(@regexp_checker).to receive(:conv_regexp).once
      expect{ @regexp_checker.run }.to raise_error(TypeError)
    end
  end
end
