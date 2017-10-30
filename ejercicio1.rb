def add_text(x, y)
  file = File.open('index.html', 'a')
  file.puts "<p>#{x}</p>"
  file.puts "<p>#{y}</p>"
  file.close
end

def add_list(x, y, arr)
  file = File.open('index.html', 'a')
  file.puts "<p>#{x}</p>"
  file.puts "<p>#{y}</p>"
  file.puts '<ul>'
  arr.each do |x|
    file.puts " <li>#{x}</li>"
  end
  file.puts '</ul>'
  file.close
end

def add_color(x, y, arr, color)
  file = File.open('index.html', 'a')
  file.puts "<p style= background-color:#{color}>#{x}</p>"
  file.puts "<p style= background-color:#{color}>#{y}</p>"
  file.puts '<ul>'
  arr.each do |x|
    file.puts " <li>#{x}</li>"
  end
  file.puts '</ul>'
  file.close
end

a = ['hola', 'mundo', 'chao', 'mundo']

add_text('hola', 'mundo')
add_list('hola', 'mundo', a)
add_color('hola', 'mundo', a, 'blue')
