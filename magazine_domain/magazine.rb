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