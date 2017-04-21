require "./config/environment.rb"


# def MoviePhone
    puts "Hello & Welcome to Netflix!"
    puts "*" * 30
    puts "\n"

    puts "Please enter your first name: "
    first_name = gets.chomp

    puts "Please enter your last name: "
    last_name = gets.chomp

    newViewer = Viewer.new(first_name +' '+ last_name)

    puts "You have successfully logged in as #{newViewer.name}"

    review_a_movie(newViewer)

     puts "What would you like to do next?"
     puts "1. Review another Movie"
     puts "2. Quit"





# end
#
# MoviePhone
