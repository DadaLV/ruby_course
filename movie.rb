movies = {
  first: 5,
  second: 2,
  third: 3
}
puts "whrite"
choice = gets.chomp
case choice
  when "add"
    puts "Add movie"
    title = gets.chomp.to_sym
    puts "rating"
    rating = gets.chomp.to_i
    if movies[title].nil?
      movies[title] = rating
    else 
      puts "already exists"    
    end
  when "update"
    puts "update title"
    title = gets.chomp.to_sym
    if movies[title].nil?
      puts "oh, error"
    else
      puts "new rating"
      rating = gets.chomp.to_i
      movies[title] = rating
    end
  when "display"
    movies.each { |movie, rating| puts "#{movie}: #{rating}" }
  when "delete"
    puts "title to delete"
    if movies[title].nil?
      puts "There is no such film"
    else 
      movies.delete(title)
    end    
  else
    puts "Error!"
end