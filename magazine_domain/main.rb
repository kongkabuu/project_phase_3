require_relative "author"
require_relative "magazine"
require_relative "article"
  


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
 