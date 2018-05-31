# ワードシンセサイザーを操作するクラス
class WordSynth
  # エフェクト配列を初期化する
  def initialize
    @effects = []
  end

  # エフェクト配列に新たなエフェクト効果を追加する
  # 
  # @params effect [Proc] エフェクト効果
  def add_effect(effect)
    @effects << effect
  end

  # 入力された文字列にエフェクト配列の効果を加えて出力する
  # 
  # @params original_words [String] 文字列
  # return [String] エフェクト配列の効果を加えた文字列
  def play(original_words)
    @effects.inject(original_words) do |word, effect|
      effect.call(word)
    end
  end
end
