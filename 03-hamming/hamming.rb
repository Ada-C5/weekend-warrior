class Hamming

  def self.compute(a, b)
    if a.length != b.length
      raise ArgumentError
    end

    if a.length == 0
      return 0
    end

    x = a.slice!(0)
    y = b.slice!(0)

    if x == y
      compute(a, b)
    else
      1 + compute(a, b)
    end
  end

end
