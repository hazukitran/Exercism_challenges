class Hamming

  VERSION = 1

  def self.compute(str1, str2)
    return 0 if str1 == str2

    raise ArgumentError.new if str1.length != str2.length 

    array_1 = str1.split("")
    array_2 = str2.split("")

    count  = 0
    array_1.size.times do |n|
      unless array_1[n] == array_2[n]
        count += 1
      end
    end
    count
  end
end