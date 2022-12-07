class Item < String
  LETTERS = ("a".."z").to_a + ("A".."Z").to_a

  def value
    LETTERS.index(self) + 1
  end
end
