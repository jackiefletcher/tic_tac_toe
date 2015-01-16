require('rspec')
require('player')
require('space')

describe(Space) do
  describe("#row") do
    it("returns the space's row number") do
      test_space = Space.new(1,2)
      expect(test_space.row()).to(eq(1))
    end
  end

  describe("#column") do
    it("returns the space's column number") do
      test_space = Space.new(1,2)
      expect(test_space.column()).to(eq(2))
    end
  end

  describe("#mark_by") do
    it("let's a player mark the space") do
      test_player = Player.new("X")
      test_space = Space.new(1,2)
      test_space.mark_by(test_player)
      expect(test_space.marked_by()).to(eq(test_player))
    end
  end

  describe("#marked_by") do
    it("returns a player object") do
      test_player = Player.new("O")
      test_space = Space.new(3,2)
      test_space.mark_by(test_player)
      expect(test_space.marked_by()).to(eq(test_player))
    end
  end
  
end
