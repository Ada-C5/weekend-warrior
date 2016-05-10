class Robot

  LETTER_ARRAY = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

  NUMBER_ARRAY = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

  def name
    name = "_#{LETTER_ARRAY.sample}#{LETTER_ARRAY.sample}#{NUMBER_ARRAY.sample}#{NUMBER_ARRAY.sample}#{NUMBER_ARRAY.sample}_"
  end

  def reset
    name = ""
  end

end
