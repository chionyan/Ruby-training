# メートル(m)、フィート(ft)、インチ(in)の単位を相互に変換する
# @param before_length[Integer] 変換元の長さ
# @param before_unit[String] 変換元の単位
# @param after_unit[String] 変換後の単位
# @return [Float] 変換後の長さ、端数が出る場合は小数第3位で四捨五入する

def convert_length (before_length, before_unit, after_unit)
  units = {
    'm' => 1.0,
    'ft' => 3.28,
    'in'=> 39.37
  }

  (before_length / units[before_unit] * units[after_unit]).round(2)
end
