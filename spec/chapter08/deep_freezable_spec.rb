require './chapter08/deep_freezable'

RSpec.describe DeepFreezable do
  it 'モジュールが参照できること' do
    expect(!!DeepFreezable).to be true
  end
end
