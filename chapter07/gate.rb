# 駅改札口の操作を行うクラス
class Gate
  STATIONS = [:umeda, :juso, :mikuni].freeze
  FARES = [150, 190].freeze

  # 駅改札口を作成
  # 
  # @param name [String] 駅名
  def initialize(name)
    @name = name
  end

  # 入場した駅でTicket#stampを行う
  # 
  # @param ticket [Ticket] Ticketクラスのインスタンス
  def enter(ticket)
    ticket.stamp(@name)
  end

  # 出場した駅でGate#calc_fareを行いfareに代入
  # fareとTicket#fareを比較した結果を返す
  # 
  # @param ticket [Ticket] Ticketクラスのインスタンス
  # @return [True] チケットの運賃が実際の運賃以上ならtrue
  # @return [False] チケットの運賃が実際の運賃未満ならfalse
  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  # ticketに記録された駅から、Gate#exitを行なった駅間の実際の運賃を求める
  # 
  # @param ticket [Ticket] Ticketクラスのインスタンス
  # @return [Integer] 実際にかかる運賃 
  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end
end
