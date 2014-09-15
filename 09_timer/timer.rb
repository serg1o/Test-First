class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded(val)
    val < 10 ? "0" << val.to_s : val.to_s
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds - hours*3600) / 60
    seconds = @seconds - hours*3600 - minutes*60
    str = padded(hours) + ":"
    str = str + padded(minutes) + ":"
    str = str + padded(seconds)
  end

end
