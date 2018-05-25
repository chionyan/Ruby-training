require './chapter07/gate'
require './chapter07/ticket'

RSpec.describe Gate do
  let(:umeda) { Gate.new(:umeda) }
  let(:juso) { Gate.new(:juso) }
  let(:mikuni) { Gate.new(:mikuni) }

  context '150円の切符を購入して、' do
    let(:ticket) { Ticket.new(150) }
    
    context '梅田で入場した場合、' do
      before { umeda.enter(ticket) }

      it '十三で出場することができる' do
        expect(juso.exit(ticket)).to eq true
      end

      it '三国で出場することができない' do
        expect(mikuni.exit(ticket)).to eq false
      end
    end

    context '十三で入場した場合、' do
      before { juso.enter(ticket) }

      it '三国で出場することができる' do
        expect(mikuni.exit(ticket)).to eq true  
      end
    end
  end

  context '190円の切符を購入して、' do
    let(:ticket) { Ticket.new(190) }

    context '梅田で入場した場合、' do
      before { umeda.enter(ticket) }

      it '三国で出場することができる' do
        expect(mikuni.exit(ticket)).to eq true
      end
    end
  end
end
