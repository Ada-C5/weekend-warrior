class Hamming

  def self.compute(x, y, distance=0)
    raise (ArgumentError) if x.length != y.length
    return distance if x.length == 0

    if x[0] == y[0]
      # return distance if xdif.length == 0
      x = x[1..-1]
      y = y[1..-1]
      Hamming.compute(x, y, distance)
    #if X = y distance is zero
    else
      distance = distance + 1
      x = x[1..-1]
      y = y[1..-1]
      Hamming.compute(x, y, distance)
    end
  end
end
