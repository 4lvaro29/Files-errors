def lines_file(archivo)
  file = File.open(archivo, 'r')
  content = file.readlines
  file.close

  lines = content.inject(0) do |x, y|
    x += 1
  end

  lines
end

print lines_file('movies.txt')
