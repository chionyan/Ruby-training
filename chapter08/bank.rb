require_relative './deep_freezable'

# DeepFreezable をミックスインするクラス 2
class Bank
  extend DeepFreezable

  CURRENCIES = deep_freeze({'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'})
end
