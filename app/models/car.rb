class Car < ApplicationRecord
  has_many :parts

  def part_count
    parts.count
  end
end

