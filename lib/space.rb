class Space
  attr_reader(:row, :column)

  @@spaces = []

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

  define_method(:save) do
    @@spaces.push(self)
  end

  define_singleton_method(:create) do |row, column|
    temp_space = Space.new(row, column)
    temp_space.save()
    @@spaces
  end
end
