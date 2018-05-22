# =>を使った記法から、=>を使わずコロン(:)を右側に付ける記法に変換する
# 変換後の:の後のスペースは1個に統一する
# 
# @param syntax [String] 変換元のハッシュ文字列
# @return [String] 変換後のハッシュ文字列
def convert_hash_syntax(syntax)
  syntax.gsub(/:(?<key>\w+)\s*=>\s*/,'\k<key>: ')
end
