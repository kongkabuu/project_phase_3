class Author
    attr_reader :name
  
    def initialize(name)
      @name = name
      @articles = []
    end
  
    def articles
      @articles
    end
  
    def magazines
      @articles.map { |article| article.magazine }.uniq
    end
  
    def add_article(magazine, title)
      article = Article.new(self, magazine, title)
      @articles << article
      article
    end
  
    def topic_areas
      magazines.map { |magazine| magazine.category }.uniq
    end
  end
  
  class Magazine
    attr_accessor  :category, :name
    @@arr = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@arr << self
    end
  
    def self.arr
      @@arr
    end
  
    def self.find_by_name(name)
      @@arr.find { |magazine| magazine.name == name }
    end
  
    def article_titles
      Article.arr.select { |article| article.magazine == self }.map { |article| article.title }
    end
  
    def contributing_authors
      Article.arr.select { |article| article.magazine == self }
                  .group_by { |article| article.author }
                  .select { |author, articles| articles.length > 2 }
                  .keys
    end
  end
  
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
  auth = Author.new("John Doe")
  
  
  mag1 = Magazine.new("telemondo", "gyptic")
  mag2 = Magazine.new("Mordern", "cars")



  auth.add_article(mag1, "Andrew kibe")
  auth.add_article(mag2, "muchene")
 
  
  puts auth.name
  puts auth.articles.map { |article| article.title }
  puts auth.magazines.map { |magazine| magazine.name }
  puts auth.topic_areas
  
  puts magazine1.name
  puts magazine1.category
  puts magazine1.article_titles
 