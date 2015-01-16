class Board

  define_method(:initialize) do
    @board = []
    3.times() do |i|
      3.times() do |j|
        @board.push(Space.create(i + 1,j + 1))
      end
    end
    @board
  end

end
