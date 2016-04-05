class Gigasecond

  VERSION = 1
  
  def self.from(time)
    sec = time.to_i + 10**9
    Time.at(sec)
  end
end