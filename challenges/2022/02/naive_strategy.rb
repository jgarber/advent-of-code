class NaiveStrategy
  KEY = {
    A: :rock,
    B: :paper,
    C: :scissors,
    X: :rock,
    Y: :paper,
    Z: :scissors
  }

  def self.from_data(data)
    data.map do |datum|
      Round.new(*self.decode(datum))
    end
  end

  def self.decode(data)
    data.split(" ").map do |code|
      KEY[code.to_sym]
    end
  end
end