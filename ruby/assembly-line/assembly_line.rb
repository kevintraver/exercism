class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    success_rate = 0
    if @speed >= 1 && @speed <= 4
      success_rate = 1.00
    elsif @speed >= 5 && @speed <= 8
      success_rate = 0.90
    elsif @speed == 9
      success_rate = 0.80
    elsif @speed == 10
      success_rate = 0.77
    else
      success_rate = 0
    end
    @speed * 221 * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
