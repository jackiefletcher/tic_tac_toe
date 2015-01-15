class Space
  attr_reader(:row, :column)

  define_method(:initialize) do |row, column|
    @row = row
    @column = column
  end

  define_method(:mark_by) do |player|
    @player = player
  end

  define_method(:marked_by) do
    @player
  end

end
