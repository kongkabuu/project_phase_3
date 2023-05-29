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