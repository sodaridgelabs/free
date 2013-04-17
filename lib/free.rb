require "free/version"
require "free/model_additions"
require "free/railtie" if defined? Rails

module Free
  def self.generate_timeslot start_hour, end_hour, day
    additional_ones = (end_hour - start_hour) - 1
    n = 0b1
    exp = 1

    additional_ones.times do
      n = n + (2 ** exp)
      exp += 1
    end

    start_hour.times do
      n = n << 1
    end

    day.times do
      n = n << 24
    end

    return n.to_s(2).rjust(168, '0')
  end

  def self.generate_all
    n = 0b1
    exp = 1

    167.times do
      n = n + (2 ** exp)
      exp += 1
    end

    return n.to_s(2)
  end

  def self.generate_none
    n = 0b0
    return n.to_s(2).rjust(168, '0')
  end
end
