class Prime

  def self.nth(target)
    raise ArgumentError.new if target == 0
    prime_array = []
    count = 2

    while prime_array.size != target
      prime_array << count if self.prime?(count)
      count += 1
    end
    prime_array.pop
  end

  def self.prime?(n)
    (2..n/2).none?{|i| n % i == 0} 
  end

end