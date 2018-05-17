# メートル(m)、フィート(ft)、インチ(in)の単位を相互に変換する
# @param before_length[Integer] 変換元の長さ
# @param before_unit[String] 変換元の単位
# @param after_unit[String] 変換後の単位
# @return [Float] 変換後の長さ、端数が出る場合は小数第3位で四捨五入する

def convert_length (before_length, before_unit, after_unit)
  meter_to_meter = 1.00
  feet_to_meter = 3.28
  inch_to_meter = 39.37

  # 変換元の長さをメートルに変換
  temp_meter =
    case before_unit
    when 'm'
      before_length / meter_to_meter
    when 'ft'
      before_length / feet_to_meter
    when 'in'
      before_length / inch_to_meter
    end

  # メートルを変換後の長さに変換
  after_length =
    case after_unit
    when 'm'
      temp_meter * meter_to_meter 
    when 'ft'
      temp_meter * feet_to_meter 
    when 'in'
      temp_meter * inch_to_meter 
    end

  after_length.round(2)
end
