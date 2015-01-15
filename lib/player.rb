class Player
  define_method(:initialize) do |player|
    @player = player
  end

  define_method(:mark) do
    @player
  end
end
