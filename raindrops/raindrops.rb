class Raindrops 

  VERSION = 1

  def self.convert(number)
    case 
    when number % 3 == 0 && number % 5 == 0 && number % 7 == 0 then "PlingPlangPlong"
    when number % 3 == 0 && number % 7 == 0 then "PlingPlong" 
    when number % 3 == 0 && number % 5 == 0 then "PlingPlang"
    when number % 5 == 0 && number % 7 == 0 then "PlangPlong"
    when number % 3 == 0 then "Pling"
    when number % 5 == 0 then "Plang"
    when number % 7 == 0 then "Plong"
    else
      "#{number}"
    end
  end
end