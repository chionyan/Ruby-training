require 'minitest/autorun'
require_relative './bank'
require_relative './team'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    # 配列の値は正しいか？
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES

    # 配列自身が freeze されているか？
    assert Team::COUNTRIES.frozen?

    # 配列の要素が全て freeze されているか？
    assert Team::COUNTRIES.all? { |country| country.frozen? }
  end

  def test_deep_freeze_to_hash
    # ハッシュの値は正しいか？
    assert_equal(
      {'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'},
      Bank::CURRENCIES
    )

    # ハッシュ自身が freeze されているか？
    assert Bank::CURRENCIES.frozen?

    # ハッシュの要素（キーと値）が全て freeze されているか？
    assert Bank::CURRENCIES.all?{ |key, value| key.frozen? && value.frozen? }
  end
end
