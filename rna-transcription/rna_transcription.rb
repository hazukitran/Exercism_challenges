class Complement
  VERSION = 3

  def self.of_dna(rna)
    raise ArgumentError.new if rna.include?("U") || rna.include?("X")
    string = ""
    rna.each_char do |c|
      case c
      when "C" then string << "G"
      when "G" then string << "C"
      when "T" then string << "A"
      when "A" then string << "U"
      end 
    end

    string
  end
end