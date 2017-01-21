class Day < ActiveRecord::Base
  def self.this_day
    return 1 if self.all.blank?
    return (self.all.pluck(:day_num).try(:max) || 0) + 1
  end
end
