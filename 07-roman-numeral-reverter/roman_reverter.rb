class Roman
  SYMBOLS = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  def self.reverter(symbol)
    total = 0
    if symbol.length > 1
      symbol_array = symbol.split("")
      symbol_array.each do |letter|
        if SYMBOLS[letter] == nil
          raise ArgumentError
        else
          total += SYMBOLS[letter]
        end
      end
      total
    elsif SYMBOLS[symbol] == nil
      raise ArgumentError
    else
      SYMBOLS[symbol]
    end
  end

end
