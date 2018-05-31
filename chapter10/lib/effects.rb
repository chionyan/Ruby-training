# エフェクトを操作するモジュール
module Effects
  # 各単語を逆順にする効果
  # 
  # return [Proc] リバースエフェクト効果
  def self.reverse
    ->(words) do
      words.split(' ').map(&:reverse).join(' ')
    end
  end

  # 指定された回数だけ各文字を繰り返す効果
  # 
  # @params rate [Integer] 回数
  # return [Proc] エコーエフェクト効果
  def self.echo(rate)
    ->(words) do
      words.chars.map{ |c| c == ' ' ? c : c * rate }.join
    end
  end

  # 全て大文字に変換し、各単語の末尾に指定された回数"!"をつける効果
  # 
  # @params level [Integer] 回数
  # return [Proc] ラウドエフェクト効果
  def self.loud(level)
    ->(words) do
      words.split(' ').map{ |word| word.upcase + '!' * level }.join(' ')
    end
  end
end
