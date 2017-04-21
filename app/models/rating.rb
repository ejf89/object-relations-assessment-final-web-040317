class Rating
  attr_accessor :score, :movie, :viewer

  ALL = []

  def self.all
      ALL
  end

  def initialize(score, movie, viewer)
      @score = score
      @movie = movie
      @viewer = viewer
      ALL << self
      
      viewer.ratings << self
      viewer.movies << movie

      movie.ratings << self
      movie.viewers << viewer

  end





end
