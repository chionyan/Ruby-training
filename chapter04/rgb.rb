# 3つの整数を受け取り、それぞれを16進数に変換した文字列を返す。（先頭に'#'を付ける）
# @param r[Integer] Rの値
# @param g[Integer] Gの値
# @param b[Integer] Bの値
# @return [String] r,g,bを16進数に変換し、結合した文字列（先頭に'#'を付ける）
def to_hex(r, g, b)
  [r, g, b].inject('#') { |hex, n| hex += n.to_s(16).rjust(2, '0')}
end

# RGBカラーを表す16 進数文字列を受け取り、R、G、Bのそれぞれを10進数の整数に変換した値を配列として返す。
# @param hex[String] '#' + RGBカラーを表す16進数文字列
# @return [Array] R、G、Bのそれぞれを10進数の整数に変換した値を配列
def to_ints(hex)
  r, g, b = hex[1..2], hex[3..4], hex[5..6]
  [r, g, b].map(&:hex)
end
