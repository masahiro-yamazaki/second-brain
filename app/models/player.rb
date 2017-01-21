class Player < ActiveRecord::Base
  scope :living, -> { where(is_living: 0) }
end
