  
  class Article
    attr_reader :author, :magazine, :title
  
    @@arr = []
  
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@arr << self
    end
  
    def self.arr
      @@arr
    end
  end