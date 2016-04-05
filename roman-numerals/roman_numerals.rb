class Fixnum

  VERSION = 1
  
  def to_roman
    roman = { -1 => ["I", "IV", "V", "IX"],
              -2 => ["X", "XL", "L", "XC"], 
              -3 => ["C", "CD", "D", "CM"], 
              -4 => ["M"]}
   
    num_array = self.to_s.split('').map(&:to_i) 
    final_array = []

    i = -1
    loop do
      break if num_array[i] == nil 
      if num_array[i] >= 5 
        if num_array[i] == 9
          final_array << roman[i][-1]
        else
          final_array << roman[i][2] + roman[i][0] * (num_array[i] - 5)
        end
      else
        if num_array[i] == 4
          final_array << roman[i][1]
        else
          final_array << roman[i][0] * num_array[i].to_i
        end 
      end
      i -= 1
      break if i == -5
    end
    final_array.reverse.join
  end
end