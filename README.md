# project_phase_3
The project includes the following classes and their respective methods:

Author
#initialize(name): Initializes an Author object with a name.
#name: Returns the name of the author.
#articles: Returns an array of Article instances written by the author.
#magazines: Returns a unique array of Magazine instances for which the author has contributed to.
#add_article(magazine, title): Creates a new Article instance associated with the author and a given magazine and title.
#topic_areas: Returns a unique array of strings with the categories of the magazines the author has contributed to.
Magazine
#initialize(name, category): Initializes a Magazine object with a name and a category.
#name: Returns the name of the magazine.
#category: Returns the category of the magazine.
#articles: Returns an array of Article instances associated with the magazine.
.all: Returns an array of all Magazine instances.
.find_by_name(name): Returns the first magazine object that matches the given name.
#article_titles: Returns an array of strings containing the titles of all articles written for the magazine.
#contributors: Returns an array of Author instances who have written for the magazine.
Article
#initialize(author, magazine, title): Initializes an Article object with an author, a magazine, and a title.
#title: Returns the title of the article.
#author: Returns the author associated with the article.
#magazine: Returns the magazine associated with the article.
.all: Returns an array of all Article instances.
