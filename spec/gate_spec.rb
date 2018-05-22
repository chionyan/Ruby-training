require_relative '../chapter07/gate'

RSpec.describe 'Gate' do
  describe 'Gate#initialize' do
    it 'Gateオブジェクトが作成できること' do
      expect(Gate.new).to_not be_nil
    end
  end
end
