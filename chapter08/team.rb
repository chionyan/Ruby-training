require_relative './deep_freezable'

# DeepFreezable をミックスインするクラス 1
class Team
  extend DeepFreezable

  COUNTRIES = deep_freeze(['Japan', 'US', 'India'])
end
