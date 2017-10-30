def words_file()
  file = File.open('peliculas.txt', 'r')
  content = file.readlines
  file.close

  word = 0
  content.each do |a|
    words = a.split(' ').each do |b|
      word += 1
    end
  end

  word
end

def word_file?(word)
  file = File.open('peliculas.txt', 'r')
  content = file.readlines
  file.close

  word = 0
  contenido.each do |x|
    words = x.split(/\W+/).each do |y|
      if word.downcase == y.downcase
        word += 1
      end
    end
  end

  word
end

puts words_file
puts words_file?('la')
