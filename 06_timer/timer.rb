class Timer
  #write your code here
  attr_accessor :seconds, :time_string, :minutes, :hours

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    secs = (@seconds % 60).to_s.rjust(2, "0")
    mins = ((@seconds / 60) % 60).to_s.rjust(2, "0")
    hrs = (@seconds / 3600).to_s.rjust(2, "0")
    time_string = "#{hrs}:#{mins}:#{secs}"
  end
end
