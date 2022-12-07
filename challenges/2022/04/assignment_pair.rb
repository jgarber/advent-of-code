class AssignmentPair < Array
  def fully_overlapping?
    self[0].cover?(self[1]) || self[1].cover?(self[0])
  end

  def overlapping?
    self[0].include?(self[1].begin) ||
      self[0].include?(self[1].end) ||
      self[1].include?(self[0].begin) ||
      self[1].include?(self[0].end)
  end

  def self.from_text(text)
    d = text.match(/(\d+)-(\d+),(\d+)-(\d+)/).to_a.drop(1).map(&:to_i)
    new([d[0]..d[1], d[2]..d[3]])
  end
end
