word_hash = {}

def words(string)
  word_hash = {}
  string_array = string.split(" ")
  string_array.each do |word|
    if word_hash[word] != nil
      word_hash[word] += 1
    else
      word_hash[word] = 1
    end
  end
  word_hash
end
