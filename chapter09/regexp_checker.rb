# 正規表現チェッククラス
class RegexpChecker
  # テキスト、正規表現パターンを受け取り、結果を表示する
  def run
    text = input_text
    regexp = conv_regexp
    output_result(text, regexp)
  end

  private

  # テキストを標準入力で受け取る
  # 
  # return [String] テキスト
  def input_text
    print 'Text?: '
    gets.chomp
  end

  # 正規表現パターンを標準入力で受け取る
  # 
  # return [String] 正規表現パターンの文字列
  def input_pattern
    print 'Pattern?: '
    gets.chomp
  end

  # 受け取った正規表現パターンを Regexp クラスに変換する
  # エラーが発生した場合、再入力させる
  # 
  # return [Regexp] Regexp クラス
  def conv_regexp
    begin
      Regexp.new(input_pattern)
    rescue RegexpError => e
      puts "Invalid pattern: #{e.message}"
      retry
    end
  end

  # テキストを正規表現パターンで抽出し、一致した内容、または一致しなかった旨を出力する
  # 
  # @params text [String] テキスト
  # @params regexp [Regexp] 正規表現パターン
  def output_result(text, regexp)
    matches = text.scan(regexp)
    if matches.size > 0
      puts "Matched: #{matches.join(',')}"
    else
      puts "Nothing matched."
    end
  end
end
