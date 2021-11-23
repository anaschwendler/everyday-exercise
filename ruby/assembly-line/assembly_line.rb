# frozen_string_literal: true

class AssemblyLine
  HOURLY_PRODUCTION = 221

  attr_reader :speed

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    HOURLY_PRODUCTION * speed * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end

  def success_rate
    case speed
    when 1..4 then 1
    when 5..8 then 0.9
    when 9 then 0.8
    when 10 then 0.77
    else "Error: speed has an invalid value (#{speed})"
    end
  end
end
