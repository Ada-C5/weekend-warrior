class Xmas

  GIFTS = [
  "a partridge in a pear tree",
  "two turtle doves",
  "three french hens",
  "four calling birds",
  "FIVE GOLDEN RINGS",
  "six geese-a-laying",
  "seven swans-a-swimming",
  "eight maids-a-milking",
  "nine ladies dancing",
  "ten lords-a-leaping",
  "eleven pipers piping",
  "twelve drummers drumming"
  ]

  ORDINALS = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh",
            "eighth", "ninth", "tenth", "eleventh", "twelfth"]
  def self.gifts(day)
    todays_gifts = GIFTS.first(day + 1)
    if todays_gifts.length > 1
      todays_gifts[0] = "and " + todays_gifts[0]
    end
    todays_gifts.reverse
  end


  def self.verse(day)
    first_line = "On the #{ORDINALS[day]} day of Christmas my true love gave to me\n"
    gifts = self.gifts(day).join("\n")

    first_line + gifts
  end

  def self.sing
    verses = []
    ORDINALS.length.times do |day|
      todays_verse = self.verse(day)
      verses << todays_verse
    end
    verses.join("\n\n")
  end
end
