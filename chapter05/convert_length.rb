UNITS = {
  m: 1.0,
  ft: 3.28,
  in: 39.37
}

# メートル(m)、フィート(ft)、インチ(in)の単位を相互に変換する
# 
# @param length[Integer] 変換元の長さ
# @param :from[Symbol] 変換元の単位
# @param :to[Symbol] 変換後の単位
# @return [Float] 変換後の長さ、端数が出る場合は小数第3位で四捨五入する
def convert_length(length, from: :m, to: :m)
  (length / UNITS[from] * UNITS[to]).round(2)
end
