class Day < ActiveRecord::Base
  def self.this_day
    return (self.all.pluck(:day_num).try(:max) || 0)
  end
end
