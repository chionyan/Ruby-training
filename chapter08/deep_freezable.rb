# 様々なクラスで呼び出せる #deep_freeze を実装したモジュール
module DeepFreezable
  # 引数とした受け取った配列、ハッシュの自身と各要素を全て freeze する
  # 
  # @param array_or_hash [Array or Hash] 配列またはハッシュ
  # @return [Array or Hash] 自身と各要素を全て freeze した配列またはハッシュ
  def deep_freeze(array_or_hash)
    case array_or_hash
    when Array
      array_or_hash.each do |element|
        element.freeze
      end
    when Hash
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end

    array_or_hash.freeze
  end
end
