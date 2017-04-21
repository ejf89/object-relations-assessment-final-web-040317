class Movie
  attr_accessor :title, :ratings, :viewers

  ALL = []

  def self.all
      ALL
  end

  def self.find_by_title(title)
      Movie.all.find do |movie|
          movie.title == title
      end
  end

  def initialize(title)
    self.title = title
    @ratings = []
    @viewers = []
    ALL << self
  end


  def average_rating
    scores = self.ratings.collect do |ratings|
         ratings.score
      end
      if scores.length != 0
          scores.inject(0){|sum,x| sum + x } / scores.length
      else
          puts "nobody's watched this yet!"
      end
  end


end
