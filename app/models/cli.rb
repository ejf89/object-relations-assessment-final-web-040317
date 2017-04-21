def review_a_movie(viewer)
   puts "Please enter the name of the movie you would like to review:"
   title = gets.chomp

   if Movie.find_by_title(title) == nil
       movie = Movie.new(title)
   else
       movie = Movie.find_by_title(title)
   end

   puts "YOU HAVE SELECTED ~#{title}~\n"
   puts "Please rate ~#{title}~ (1 - 5 stars)\n"
   stars = gets.chomp

   rating = viewer.create_rating(stars, movie)
   puts "Thank you for your excellent taste and contribution. \n"

end
