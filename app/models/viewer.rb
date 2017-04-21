class Viewer
  attr_accessor :first_name, :last_name, :name, :ratings, :movies

  ALL = []

  def self.all
      ALL
  end

  def self.find_by_name(name)
      Viewer.all.find do |viewer|
          viewer.name == name
      end
  end

  def initialize(full_name)
    @name = full_name
    @movies = []
    @ratings =[]
    ALL << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def create_rating(score, movie)
      Rating.new(score, movie, self)
  end

end
