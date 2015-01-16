require('rspec')
require('player')
require('space')
require('board')

describe(Board) do
  describe("#initialize") do
    it("creates 9 spaces as a board") do
    expect(Board.new()).to(eq([@@spaces]))
    end
  end
end
