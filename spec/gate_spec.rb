require_relative '../chapter07/gate'
require_relative '../chapter07/ticket'

RSpec.describe 'Gate' do
  umeda = Gate.new(:umeda)
  juso = Gate.new(:juso)
  
  context '150円の切符を購入して、' do
    ticket = Ticket.new(150)
    
    context '梅田で入場した場合、' do
      umeda.enter(ticket)

      it '十三で出場することができる' do
        expect(juso.exit(ticket)).to eq true
      end
    end
  end
end
