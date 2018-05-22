# チケットの操作を行うクラス
# 
# @attr_reader fare [Integer] 運賃
# @attr_reader stamped_at [String] 入場した駅名
class Ticket
  attr_reader :fare, :stamped_at

  # チケットを作成
  # 
  # @param fare [Integer] 運賃 
  def initialize(fare)
    @fare = fare
  end

  # 入場した駅名を@stamped_atに記録
  # 
  # @param name [String] 入場した駅名
  def stamp(name)
    @stamped_at = name
  end
end
